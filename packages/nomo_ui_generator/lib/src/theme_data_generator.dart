// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:nomo_ui_generator/src/model_visitor.dart';
import 'package:source_gen/source_gen.dart';

import '../annotations.dart';

class ComponentThemeDataGenerator
    extends GeneratorForAnnotation<NomoComponentThemeData> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final buffer = StringBuffer();

    final visitor = ModelVisitor();
    element.visitChildren(visitor);

    final _className = element.name;
    if (_className == null) throw Exception("Class name is null");

    ///
    /// ColorData
    ///
    final colorDataClassNameNullable = "${_className}ColorDataNullable";
    final colorDataClassName = "${_className}ColorData";

    buffer.write(
      _colorThemeDataNullable(
        className: colorDataClassNameNullable,
        colorFields: visitor.colorFields,
      ),
    );

    buffer.write(
      _colorThemeData(
        className: colorDataClassName,
        classNameNullable: colorDataClassNameNullable,
        colorFields: visitor.colorFields,
      ),
    );

    ///
    /// SizingData
    ///

    final sizingDataClassNameNullable = "${_className}SizingDataNullable";
    final sizingDataClassName = "${_className}SizingData";

    buffer.write(
      _sizingDataNullable(
        className: sizingDataClassNameNullable,
        sizingFields: visitor.sizingFields,
      ),
    );

    buffer.write(
      _sizingData(
        className: sizingDataClassName,
        classNameNullable: sizingDataClassNameNullable,
        sizingFields: visitor.sizingFields,
      ),
    );

    ///
    /// ThemeData
    ///

    final themeDataClassName = "${_className}ThemeData";
    final themeDataNullableClassName = "${_className}ThemeDataNullable";
    final themeOverrideInheritedWidgetClassName = "${_className}ThemeOverride";

    buffer.write(
      _getThemeDataClass(
        className: themeDataClassName,
        colordataClassName: colorDataClassName,
        sizingdataClassName: sizingDataClassName,
        themeDataClassNameNullable: themeDataNullableClassName,
        colorFields: visitor.colorFields,
        sizingFields: visitor.sizingFields,
      ),
    );

    buffer.write(
      _getThemeDataNullableClass(
        className: themeDataNullableClassName,
        colordataClassNameNullable: colorDataClassNameNullable,
        sizingdataClassNameNullable: sizingDataClassNameNullable,
        colorFields: visitor.colorFields,
        sizingFields: visitor.sizingFields,
      ),
    );

    buffer.write(
      _getThemeOverrideInheritedWidget(
        className: themeOverrideInheritedWidgetClassName,
        themeDataClassName: themeDataNullableClassName,
      ),
    );

    ///
    /// GetFromContext Function
    ///

    final themeName = annotation.read("themeName").stringValue;

    buffer.write(
      _getFromContext(
        widgetName: _className,
        themeDataClassName: themeDataClassName,
        colorDataClassName: colorDataClassName,
        sizingDataClassName: sizingDataClassName,
        themeName: themeName,
        overrideThemeInheritedWidgetClassName:
            themeOverrideInheritedWidgetClassName,
        colorFields: visitor.colorFields,
        sizingFields: visitor.sizingFields,
      ),
    );

    final content = buffer.toString();
    buffer.clear();

    return content;
  }

  String _colorThemeDataNullable({
    required String className,
    required Map<String, (String, String)> colorFields,
  }) {
    final buffer = StringBuffer();

    buffer.writeln("class $className {");

    for (var colorfieldEntry in colorFields.entries) {
      final (type, _) = colorfieldEntry.value;
      final name = colorfieldEntry.key;

      buffer.writeln("final ${type}? $name;");
    }

    /// Constructor
    buffer.writeln("const $className(");
    if (colorFields.isNotEmpty) {
      buffer.writeln("{");
      for (var name in colorFields.keys) {
        buffer.writeln("this.$name,");
      }

      buffer.writeln("}");
    }
    buffer.writeln(");");

    buffer.writeln("}");
    final content = buffer.toString();
    buffer.clear();
    return content;
  }

  String _colorThemeData({
    required String className,
    required String classNameNullable,
    required Map<String, (String, String)> colorFields,
  }) {
    final buffer = StringBuffer();

    buffer.writeln("class $className implements $classNameNullable{");

    for (var colorfieldEntry in colorFields.entries) {
      final (type, value) = colorfieldEntry.value;
      final name = colorfieldEntry.key;

      buffer.writeln("final ${type.getNullablePostfix(value)} $name;");
    }

    /// Constructor
    buffer.writeln("const $className(");
    if (colorFields.isNotEmpty) {
      buffer.writeln("{");
      for (var colorfieldEntry in colorFields.entries) {
        final (type, value) = colorfieldEntry.value;
        final name = colorfieldEntry.key;
        buffer.writeln("this.$name = ${(type, value).constPrefix} $value,");
      }

      buffer.writeln("}");
    }
    buffer.writeln(");");

    /// Lerp
    buffer.writeln(
      "static $className lerp($className a, $className b, double t) {",
    );
    buffer.writeln("return $className(");
    for (final entry in colorFields.entries) {
      final name = entry.key;
      final type = entry.value.$1;
      final value = entry.value.$2;

      final dontUseLerp = switch (type) {
        "BoxShape" => true,
        _ => false,
      };
      if (dontUseLerp) {
        buffer.writeln("$name: t < 0.5 ? a.$name : b.$name,");
        continue;
      }

      final nullAssertion =
          type.getNullablePostfix(value).contains("?") ? "" : "!";

      if (type == "double") {
        buffer.writeln(
          "$name: lerpDouble(a.$name, b.$name, t)$nullAssertion,",
        );
        continue;
      }

      buffer.writeln(
        "$name: $type.lerp(a.$name, b.$name, t)$nullAssertion,",
      );
    }
    buffer.writeln(");}");

    buffer.writeln("}");
    final content = buffer.toString();
    buffer.clear();
    return content;
  }

  String _getThemeOverrideInheritedWidget({
    required String className,
    required String themeDataClassName,
  }) {
    final buffer = StringBuffer();

    buffer.writeln("class $className extends InheritedWidget {");
    buffer.writeln("final $themeDataClassName data;");

    buffer.writeln("const $className({");
    buffer.writeln("required this.data,");
    buffer.writeln("required super.child,");
    buffer.writeln("});");

    buffer.writeln('''static $themeDataClassName of(BuildContext context) {
      final result = context.dependOnInheritedWidgetOfExactType<$className>();
      assert(result != null, 'No ThemeInfo found in context');
      return result!.data;
      }''');

    buffer.writeln('''
      static $themeDataClassName? maybeOf(BuildContext context) {
      return context
          .dependOnInheritedWidgetOfExactType<$className>()
          ?.data;
      }''');

    buffer.writeln('''
      @override
      bool updateShouldNotify($className oldWidget) {
      return oldWidget.data != data;
      }''');

    buffer.writeln('}');

    final content = buffer.toString();
    buffer.clear();
    return content;
  }

  ///
  /// SizingTheme
  ///
  String _sizingDataNullable({
    required String className,
    required Map<String, (String, String)> sizingFields,
  }) {
    final buffer = StringBuffer();

    buffer.writeln("class $className {");

    for (var colorfieldEntry in sizingFields.entries) {
      final (type, _) = colorfieldEntry.value;
      final name = colorfieldEntry.key;

      buffer.writeln("final ${type}? $name;");
    }

    /// Constructor
    buffer.writeln("const $className(");
    if (sizingFields.isNotEmpty) {
      buffer.writeln("{");
      for (var name in sizingFields.keys) {
        buffer.writeln("this.$name,");
      }

      buffer.writeln("}");
    }
    buffer.writeln(");");

    buffer.writeln("}");
    final content = buffer.toString();
    buffer.clear();
    return content;
  }

  String _sizingData({
    required String className,
    required String classNameNullable,
    required Map<String, (String, String)> sizingFields,
  }) {
    final buffer = StringBuffer();

    buffer.writeln("class $className implements $classNameNullable{");

    for (var colorfieldEntry in sizingFields.entries) {
      final (type, value) = colorfieldEntry.value;

      final name = colorfieldEntry.key;

      buffer.writeln("final ${type.getNullablePostfix(value)} $name;");
    }

    /// Constructor
    buffer.writeln("const $className(");
    if (sizingFields.isNotEmpty) {
      buffer.writeln("{");
      for (var colorfieldEntry in sizingFields.entries) {
        final (type, value) = colorfieldEntry.value;
        final name = colorfieldEntry.key;
        buffer.writeln("this.$name = ${(type, value).constPrefix} $value,");
      }

      buffer.writeln("}");
    }
    buffer.writeln(");");

    /// Lerp
    buffer.writeln(
      "static $className lerp($className a, $className b, double t) {",
    );
    buffer.writeln("return $className(");
    for (final entry in sizingFields.entries) {
      final name = entry.key;
      final type = entry.value.$1;
      final value = entry.value.$2;

      final dontUseLerp = switch (type) {
        "bool" => true,
        _ => false,
      };
      if (dontUseLerp) {
        buffer.writeln("$name: t < 0.5 ? a.$name : b.$name,");
        continue;
      }

      final nullAssertion =
          type.getNullablePostfix(value).contains("?") ? "" : "!";

      if (type == "double") {
        buffer.writeln(
          "$name: lerpDouble(a.$name, b.$name, t)$nullAssertion,",
        );
        continue;
      }

      buffer.writeln(
        "$name: $type.lerp(a.$name, b.$name, t)$nullAssertion,",
      );
    }
    buffer.writeln(");}");

    buffer.writeln("}");
    final content = buffer.toString();
    buffer.clear();
    return content;
  }

  ///
  /// THEMEDATA
  ///

  String _getThemeDataClass({
    required String className,
    required String colordataClassName,
    required String sizingdataClassName,
    required String themeDataClassNameNullable,
    required Map<String, (String, String)> colorFields,
    required Map<String, (String, String)> sizingFields,
  }) {
    final buffer = StringBuffer();

    buffer.writeln(
        "class $className implements $colordataClassName, $sizingdataClassName{");

    /// Fields
    final fields = {...colorFields, ...sizingFields};

    for (final field in fields.entries) {
      final (type, value) = field.value;
      final name = field.key;

      buffer.writeln("final ${type.getNullablePostfix(value)} $name;");
    }

    /// Constructor
    buffer.writeln("const $className(");
    if (fields.isNotEmpty) {
      buffer.writeln("{");
      for (final field in fields.entries) {
        final (type, value) = field.value;
        final name = field.key;

        buffer.writeln("this.$name = ${(type, value).constPrefix} $value,");
      }
      buffer.writeln("}");
    }
    buffer.writeln(");");

    /// Factory
    buffer.writeln("factory $className.from(");
    buffer.writeln("$colordataClassName colors,");
    buffer.writeln("$sizingdataClassName sizing,");
    buffer.writeln(") {");
    buffer.writeln("return $className(");
    for (final name in colorFields.keys) {
      buffer.writeln("$name: colors.$name,");
    }
    for (final name in sizingFields.keys) {
      buffer.writeln("$name: sizing.$name,");
    }
    buffer.writeln(");");
    buffer.writeln("}");

    /// Override
    buffer.writeln("$className override([");
    buffer.writeln("$themeDataClassNameNullable? override");
    buffer.writeln("]) {");
    buffer.writeln("return $className(");
    for (final name in [...colorFields.keys, ...sizingFields.keys]) {
      buffer.writeln("$name: override?.$name ?? $name,");
    }

    buffer.writeln(");");
    buffer.writeln("}");

    buffer.writeln("}");

    final content = buffer.toString();
    buffer.clear();
    return content;
  }
}

String _getThemeDataNullableClass({
  required String className,
  required String colordataClassNameNullable,
  required String sizingdataClassNameNullable,
  required Map<String, (String, String)> colorFields,
  required Map<String, (String, String)> sizingFields,
}) {
  final buffer = StringBuffer();

  buffer.writeln(
      "class $className implements $colordataClassNameNullable, $sizingdataClassNameNullable{");

  /// Fields
  final fields = {...colorFields, ...sizingFields};

  for (final field in fields.entries) {
    final (type, _) = field.value;
    final name = field.key;

    buffer.writeln("final ${type}? $name;");
  }

  /// Constructor
  if (fields.isNotEmpty) {
    buffer.writeln("const $className({");
    for (final name in fields.keys) {
      buffer.writeln("this.$name,");
    }

    buffer.writeln("});");
  }

  buffer.writeln("}");

  final content = buffer.toString();
  buffer.clear();
  return content;
}

String _getFromContext({
  required String widgetName,
  required String themeDataClassName,
  required String sizingDataClassName,
  required String colorDataClassName,
  required String themeName,
  required String overrideThemeInheritedWidgetClassName,
  required Map<String, (String, String)> colorFields,
  required Map<String, (String, String)> sizingFields,
}) {
  final buffer = StringBuffer();

  buffer.writeln("$themeDataClassName getFromContext(");
  buffer.writeln("BuildContext context,");
  buffer.writeln("$widgetName widget,");
  buffer.writeln(") {");

  if (colorFields.isNotEmpty) {
    buffer.writeln(
        "final globalColorTheme = NomoTheme.maybeOf(context)?.componentColors.$themeName ?? $colorDataClassName();");
  } else {
    buffer.writeln("final globalColorTheme = $colorDataClassName();");
  }
  if (sizingFields.isNotEmpty) {
    buffer.writeln(
        "final globalSizingTheme = NomoTheme.maybeOf(context)?.componentSizes.$themeName ?? $sizingDataClassName();");
  } else {
    buffer.writeln("final globalSizingTheme = $sizingDataClassName();");
  }

  buffer.writeln(
      "final themeOverride = $overrideThemeInheritedWidgetClassName.maybeOf(context);");

  buffer.writeln(
      "final themeData = $themeDataClassName.from(globalColorTheme, globalSizingTheme).override(themeOverride);");

  buffer.writeln("return $themeDataClassName(");
  for (final name in [...colorFields.keys, ...sizingFields.keys]) {
    buffer.writeln("$name: widget.$name ?? themeData.$name,");
  }

  buffer.writeln(");");
  buffer.writeln("}");

  final content = buffer.toString();
  buffer.clear();
  return content;
}
