import 'package:example/routes.dart';
import 'package:example/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:nomo_ui_kit/app/nomo_app.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  // const savedColorMode = ColorMode.LIGHT;
  usePathUrlStrategy();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return NomoApp(
      sizingThemeBuilder: (width) => switch (width) {
        < 480 => sizingSmall,
        < 1080 => sizingMedium,
        _ => sizingLarge,
      },
      theme: NomoThemeData(
        colorTheme: ColorMode.LIGHT.theme,
        sizingTheme: SizingMode.LARGE.theme,
        textTheme: typography,
      ),
      supportedLocales: const [Locale('en', 'US')],
      routes: routes,
    );
  }
}

class MultiWrapper extends StatelessWidget {
  final Widget child;

  final List<Widget Function(BuildContext context, Widget child)> builders;

  const MultiWrapper({Key? key, required this.builders, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return builders.fold<Widget>(
      child,
      (previousValue, element) => element(context, previousValue),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final file = get(
        Uri.parse(
          "https://raw.githubusercontent.com/nomo-app/nomo-ui-kit/develop/README.md",
        ),
        headers: {"Accept": "text/plain"}).then(
      (value) => value.body,
    );

    return FutureBuilder(
      future: file,
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          return MarkdownWidget(
            config: MarkdownConfig(
              configs: [
                // TEXT config
                H1Config(style: context.typography.h1),
                H2Config(style: context.typography.h2),
                H3Config(style: context.typography.h3),
                H4Config(style: context.typography.b3),
                H5Config(style: context.typography.b2),
                H6Config(style: context.typography.b1),
              ],
            ),
            data: snapshot.data as String,
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
