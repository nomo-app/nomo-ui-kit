import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_generator/src/model_visitor.dart';
import 'package:source_gen/source_gen.dart';

class ThemeUtilGenerator extends GeneratorForAnnotation<NomoThemeUtils> {
  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final StringBuffer buffer = StringBuffer();

    buffer.writeln(
        "// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null ");

    final visitor = ModelVisitor();

    final coreType = annotation.read("coreType").stringValue;

    element.visitChildren(visitor);

    lerp(buffer, visitor);

    overrideFactory(buffer, visitor, coreType);

    defaultConstructor(buffer, visitor);

    final out = buffer.toString();
    return out;
  }
}

void lerp(StringBuffer buffer, ModelVisitor visitor) {
  final className = visitor.className;
  final fields = visitor.fields;

  buffer.writeln("$className lerp$className($className a, $className b, double t) {");
  buffer.writeln("return $className._(");
  fields.forEach((key, value) {
    buffer.writeln("$key: $value.lerp(a.$key, b.$key, t,),");
  });
  buffer.writeln(");");
  buffer.writeln("}");
}

void overrideFactory(StringBuffer buffer, ModelVisitor visitor, String coreType) {
  final className = visitor.className;
  final fields = visitor.fields;

  buffer.writeln("$className override$className({");
  buffer.writeln("required $coreType core,");
  fields.forEach((key, value) {
    buffer.writeln("$value? $key,");
  });
  buffer.writeln("}) {");
  buffer.writeln("final def = $className.defaultComponents(core);");
  buffer.writeln("return $className._(");
  fields.forEach((key, value) {
    buffer.writeln("$key: $key ?? def.$key,");
  });
  buffer.writeln(");");
  buffer.writeln("}");
}

void defaultConstructor(StringBuffer buffer, ModelVisitor visitor) {
  final className = visitor.className;
  final fields = visitor.fields;

  buffer.writeln("$className defaultConstructor({");
  fields.forEach((key, value) {
    buffer.writeln("$value? $key,");
  });
  buffer.writeln("}) {");
  buffer.writeln("return $className._(");
  fields.forEach((key, value) {
    buffer.writeln("$key: $key ?? const $value(),");
  });
  buffer.writeln(");");
  buffer.writeln("}");
}
