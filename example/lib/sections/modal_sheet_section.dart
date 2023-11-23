import 'package:flutter/material.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class ModalSheetSection extends StatelessWidget {
  const ModalSheetSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = RouteInfoProvider.of(context).route;
    return NomoRouteBody(
      child: Column(
        children: [
          Text("${info.name}"),
          ElevatedButton(
            onPressed: () {
              NomoNavigator.of(context).push(
                const RoutePath(name: '/modalSheet/sheet1'),
              );
            },
            child: const Text("Show Modal Sheet"),
          ),
        ],
      ),
    );
  }
}

class ModalSheet1 extends StatefulWidget {
  const ModalSheet1({Key? key}) : super(key: key);

  @override
  State<ModalSheet1> createState() => _ModalSheet1State();
}

class _ModalSheet1State extends State<ModalSheet1>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final routeInfo = RouteInfoProvider.of(context).route;
    print(routeInfo);

    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.delta.dy > 0) {
            Navigator.of(context).pop();
          }
        },
        child: Container(
          color: context.colors.surface,
          width: context.width,
          height: 400,
        ),
      ),
    );
  }
}
