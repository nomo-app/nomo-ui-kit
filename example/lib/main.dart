import 'dart:math';

import 'package:example/sections/buttons/icon_button_wrapper.dart';
import 'package:example/sections/buttons/text_button_wrapper.dart';
import 'package:example/sections/dialogs/dialog_wrapper.dart';
import 'package:example/routes.dart';
import 'package:example/widgets/sider.dart';
import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/app/nomo_app.dart';
import 'package:nomo_ui_kit/components/app_bar/nomo_app_bar.dart';
import 'package:nomo_ui_kit/components/bottom_bar/nomo_bottom_bar.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/scaffold/nomo_scaffold.dart';
import 'package:nomo_ui_kit/components/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

void main() {
  // const savedColorMode = ColorMode.LIGHT;

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return NomoApp(
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
          bottomBar: NomoBottomBar(),
          sider: Sider(),
          padding: EdgeInsets.zero,
          nestedAppBar: NomoAppBar(
            leading: NomoText(
              "Nomo Theme Playground",
              //  style: context.typography.h3,
            ),
            topInset: 8,
            backgroundColor: Colors.transparent,
            trailling: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final rand = Random().nextInt(ColorMode.values.length);
                    ThemeProvider.of(context)
                        .changeColorTheme(ColorMode.values[rand]);
                  },
                  child: const Text("Theme Switcher"),
                ),
              ],
            ),
          ),
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
    return Scrollbar(
      thickness: 16,
      child: SingleChildScrollView(
        padding: context.componentSizes.scaffoldTheme.padding,
        controller: PrimaryScrollController.of(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NomoOutlineContainer(
            //     //   background: Colors.amber,
            //     ),
            Container(
              width: 600,
              // height: 200,
              color: Colors.red,
              child: NomoText(
                "data",
                style: TextStyle(fontSize: 24),
                maxLines: 3,

                //   minFontSize: 12,
                //       fitHeight: true,
                //  fontSizes: [24, 20, 16, 12],
                // overflow: TextOverflow.ellipsis,
              ),
            ),
            // NomoText(
            //   "lorem ipsum dolor sit amet",
            // ),
            // SizedBox(
            //   height: 100,
            //   child: Row(
            //     children: [
            //       Expanded(child: NomoText("lorem ipsum dolor sit amet" * 10)),
            //       Expanded(
            //         flex: 2,
            //         child: NomoText("lorem ipsum dolor sit amet" * 10),
            //       ),
            //     ],
            //   ),
            // ),

            // SizedBox(
            //   height: 100,
            //   child: Row(
            //     children: [
            //       Container(
            //         width: 400,
            //         height: 100,
            //         color: Colors.red,
            //       ),
            //       Expanded(
            //         flex: 2,
            //         child: NomoText("lorem ipsum dolor sit amet" * 10),
            //       ),
            //     ],
            //   ),
            // )
            // Text(
            //   "Text Button",
            //   style: TextStyle(fontSize: 24),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // TextButtonWrapper(),
            // SizedBox(
            //   height: 20,
            // ),
            // Text(
            //   "Icon Button",
            //   style: TextStyle(fontSize: 24),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // IconButtonWrapper(),
            // SizedBox(
            //   height: 20,
            // ),
            // Text(
            //   "Dialog / Card",
            //   style: TextStyle(fontSize: 24),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // DialogWrapper(),
          ],
        ),
      ),
    );
  }
}
