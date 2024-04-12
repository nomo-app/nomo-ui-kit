import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:source_gen/source_gen.dart';

import 'package:analyzer/dart/constant/value.dart';
// ignore: implementation_imports

class ThemeUtilGenerator extends GeneratorForAnnotation<NomoThemeUtils> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    // Cast the Element instance to VariableElement
    final variableElement = element as VariableElement;

    final String className = annotation.read('name').stringValue;

    final fields =
        variableElement.computeConstantValue()?.toListValue() ?? <DartObject>[];

    final fieldMap = <String, String>{};

    fields.forEach((element) {
      final typeName =
          element.toTypeValue()!.getDisplayString(withNullability: false);

      var variableName = typeName.replaceAll('Nomo', '').replaceAll('Data', '');
      variableName = variableName.substring(0, 1).toLowerCase() +
          variableName.substring(1);

      fieldMap[variableName] = typeName;
    });

    final buffer = StringBuffer();

    buffer.writeln(
      '// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null ',
    );

    lerp(buffer, className, fieldMap);

    classes(buffer, className, fieldMap);

    overrideExtension(buffer, className, fieldMap);

    final out = buffer.toString();
    return out;
  }
}

void lerp(
  StringBuffer buffer,
  String className,
  Map<String, String> fields,
) {
  buffer.writeln(
    '$className lerp$className($className a, $className b, double t) {',
  );
  buffer.writeln('return $className(');
  fields.forEach((key, value) {
    buffer.writeln('$key: $value.lerp(a.$key, b.$key, t,),');
  });
  buffer.writeln(');');
  buffer.writeln('}');
}

void classes(
  StringBuffer buffer,
  String className,
  Map<String, String> fields,
) {
  final classNameNullable = '${className}Nullable';

  buffer.writeln('class $classNameNullable {');
  fields.forEach((key, value) {
    buffer.writeln('final ${value}Nullable? $key;');
  });
  buffer.writeln('const $classNameNullable({');
  fields.forEach((key, value) {
    buffer.writeln('this.$key,');
  });
  buffer
    ..writeln('});')
    ..writeln('}');

  buffer.writeln('class $className implements $classNameNullable{');
  fields.forEach((key, value) {
    buffer.writeln('@override');
    buffer.writeln('final $value $key;');
  });
  buffer.writeln('const $className({');
  fields.forEach((key, value) {
    buffer.writeln('this.$key = const $value(),');
  });
  buffer
    ..writeln('});')
    ..writeln('}');
}

void overrideExtension(
  StringBuffer buffer,
  String className,
  Map<String, String> fields,
) {
  final classNameNullable = '${className}Nullable';

  buffer.writeln('extension ${className}Override on $className {');

  buffer.writeln('$className overrideWith($classNameNullable? nullable) {');
  buffer.writeln('if (nullable == null) return this;');
  buffer.writeln('return $className(');
  fields.forEach((key, value) {
    buffer.writeln('$key: $value.overrideWith($key, nullable.$key),');
  });
  buffer.writeln(');');
  buffer.writeln('}');
  buffer.writeln('}');
}

extension on List<DartObject> {
  List<Map<String, DartObject>> get namedArgumentsList {
    return map((e) => ConstantReader(e).revive().namedArguments).toList();
  }
}
