library nomo_ui_generator.util_builder;

import 'package:build/build.dart';
import 'package:nomo_ui_generator/src/reflection_generator.dart';
import 'package:nomo_ui_generator/src/theme_util_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder themeUtilsBuilder(BuilderOptions options) =>
    SharedPartBuilder([ThemeUtilGenerator()], 'theme_utils');

Builder reflectionBuilder(BuilderOptions options) =>
    SharedPartBuilder([ReflectionGenerator()], 'reflection');
