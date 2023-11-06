import 'package:example/routes.dart';
import 'package:example/theme.dart';
import 'package:example/widgets/bottom_bar.dart';
import 'package:example/widgets/sider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:markdown_widget/widget/all.dart';
import 'package:nomo_ui_kit/app/nomo_app.dart';
import 'package:nomo_ui_kit/components/app_bar/nomo_app_bar.dart';
import 'package:nomo_ui_kit/components/scaffold/nomo_scaffold.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';

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
      routes: AppRoutes.routes,
      nestedRoutes: AppRoutes.nestedRoutes,
      nestedNavigatorWrapper: (nav, context) {
        return NomoScaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(context.componentSizes.appBarTheme.height),
            child: NomoAppBar(
              leading: Text(
                "Nomo UI Kit",
                style: context.typography.h3,
              ),
              trailling: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      ThemeProvider.of(context).changeColorTheme(
                        ColorMode.LIGHT.theme,
                      );
                    },
                    icon: const Icon(
                      Icons.light_mode,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ThemeProvider.of(context).changeColorTheme(
                        ColorMode.DARK.theme,
                      );
                    },
                    icon: const Icon(
                      Icons.dark_mode,
                    ),
                  ),
                ],
              ),
            ),
          ),
          sider: const Sider(),
          bottomBar: const BottomBar(),
          child: nav,
        );
      },
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

    return DefaultTextStyle(
      style: context.typography.b1,
      child: FutureBuilder(
        future: file,
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return MarkdownWidget(
              data: snapshot.data as String,
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
