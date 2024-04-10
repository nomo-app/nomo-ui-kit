import 'package:example/routes.dart';
import 'package:example/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/app/nomo_app.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:nomo_ui_kit/utils/route.dart';

final appRouter = AppRouter();

final menuItems = appRouter.routeInfos.toMenuRoutes.toMenuItems;

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
        constants: constants,
      ),
      supportedLocales: const [Locale('en', 'US')],
      appRouter: appRouter,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final file = get(
        Uri.parse(
          "https://raw.githubusercontent.com/nomo-app/nomo-ui-kit/main/README.md",
        ),
        headers: {"Accept": "text/plain"}).then(
      (value) => value.body,
    );

    return NomoRouteBody(
      builder: (context, route) => SingleChildScrollView(
        controller: DefaultScrollController.of(context),
        child: FutureBuilder(
          future: file,
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              return MarkdownWidget(
                shrinkWrap: true,
                config: MarkdownConfig(
                  configs: [
                    // TEXT config
                    H1Config(style: context.typography.h1),
                    H2Config(style: context.typography.h2),
                    H3Config(style: context.typography.h3),
                    H4Config(style: context.typography.b3),
                    H5Config(style: context.typography.b2),
                    H6Config(style: context.typography.b1),
                    PConfig(textStyle: context.typography.b1),
                    // CODE config
                    CodeConfig(
                      style: context.typography.b2,
                    ),
                    // BLOCKQUOTE config
                    BlockquoteConfig(
                      textColor: context.colors.foreground1,
                    ),
                  ],
                ),
                data: snapshot.data as String,
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
