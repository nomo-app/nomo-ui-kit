import 'package:example/buttons/icon_button_wrapper.dart';
import 'package:example/buttons/text_button_wrapper.dart';
import 'package:example/dialogs/dialog_wrapper.dart';
import 'package:example/nomo_app.dart';
import 'package:example/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return NomoApp(
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      routes: AppRoutes.routes,
      nestedRoutes: AppRoutes.nestedRoutes,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              "Text Button",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            TextButtonWrapper(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Icon Button",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            IconButtonWrapper(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Dialog / Card",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            DialogWrapper(),
          ],
        ),
      ),
    );
  }
}
