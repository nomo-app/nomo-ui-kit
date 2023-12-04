import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:source_gen/source_gen.dart';

class ReflectionGenerator extends GeneratorForAnnotation<StaticFieldsList> {
  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final StringBuffer buffer = StringBuffer();

    buffer.writeln(
        "// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, deprecated_member_use_from_same_package ");

    final ClassElement classElement = element as ClassElement;

    final staticFields = classElement.fields.where((field) => field.isStatic);

    final className = classElement.name;

    buffer.writeln("const allIcons = {");
    for (final field in staticFields) {
      buffer.writeln("'${field.name}':$className.${field.name},");
    }
    buffer.writeln("};");

    final out = buffer.toString();
    return out;
  }
}
