import 'package:analyzer/dart/element/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:collection/collection.dart';

const colorField = "@NomoColorField";
const sizingField = "@NomoSizingField";

class ModelVisitor extends SimpleElementVisitor {
  String? className;

  Map<String, dynamic> fields = {};

  Map<String, (String, String)> colorFields = {};

  Map<String, (String, String)> sizingFields = {};

  @override
  visitConstructorElement(ConstructorElement element) {
    className = element.type.returnType.toString();

    className = className?.replaceAll('Style', '');
  }

  @override
  visitFieldElement(FieldElement element) {
    final type = element.type.toString().replaceAll('?', '');
    final colorFieldAnnotation = element.metadata.singleWhereOrNull(
      (annotation) => annotation.toSource().startsWith(colorField),
    );

    if (colorFieldAnnotation != null) {
      final value = colorFieldAnnotation.computeConstantValue();

      if (value != null) {
        final typeString = colorFieldAnnotation.element.toString();
        int first_i = typeString.indexOf('<');
        int last_i = typeString.lastIndexOf('>');
        final type = typeString.substring(first_i + 1, last_i).typeOverride;

        final valueString =
            colorFieldAnnotation.toSource().replaceAll(sizingField, '');
        first_i = valueString.indexOf('(');
        final value =
            valueString.substring(first_i + 1, valueString.length - 1);

        colorFields[element.name] = (type, value);
      }

      return;
    }

    final sizingFieldAnnotation = element.metadata.singleWhereOrNull(
      (annotation) => annotation.toSource().startsWith(sizingField),
    );

    if (sizingFieldAnnotation != null) {
      final typeString = sizingFieldAnnotation.element.toString();

      int first_i = typeString.indexOf('<');
      int last_i = typeString.lastIndexOf('>');
      final type = typeString.substring(first_i + 1, last_i).typeOverride;

      final valueString =
          sizingFieldAnnotation.toSource().replaceAll(sizingField, '');
      first_i = valueString.indexOf('(');
      final value = valueString.substring(first_i + 1, valueString.length - 1);

      sizingFields[element.name] = (type, value);

      return;
    }

    fields[element.name] =
        element.type.getDisplayString(withNullability: false);
  }
}

extension DartObjectUtil on String {
  String get typeOverride {
    return switch (this) {
      "EdgeInsets" => "EdgeInsetsGeometry",
      "MaterialColor" => "Color",
      _ => this,
    };
  }

  String getNullablePostfix(String value) {
    return "$this${switch (value) {
      "null" || "Null" => "?",
      _ => "",
    }}";
  }
}

extension DartTypeUtil on (String, String) {
  String get constPrefix {
    return switch (this) {
      (_, String val) when !val.contains('(') => "",
      _ => "const",
    };
  }
}
