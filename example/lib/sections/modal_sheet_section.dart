import 'package:example/routes.dart';
import 'package:flutter/material.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class ModalSheetSection extends StatelessWidget {
  const ModalSheetSection({super.key});

  @override
  Widget build(BuildContext context) {
    final info = RouteInfoProvider.of(context).route;
    return NomoRouteBody(
      child: Column(
        children: [
          Text("${info.name}"),
          ElevatedButton(
            onPressed: () {
              NomoNavigator.of(context).push(ModalSheet1Route());
            },
            child: const Text("Show Modal Sheet"),
          ),
        ],
      ),
    );
  }
}

class ModalSheet1 extends StatefulWidget {
  const ModalSheet1({super.key});

  @override
  State<ModalSheet1> createState() => _ModalSheet1State();
}

class _ModalSheet1State extends State<ModalSheet1>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
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
