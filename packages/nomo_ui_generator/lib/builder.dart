library nomo_ui_generator.builder;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/theme_data_generator.dart';

Builder themeDataBuilder(BuilderOptions options) =>
    PartBuilder([ComponentThemeDataGenerator()], '.theme_data.g.dart');
