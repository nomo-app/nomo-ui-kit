import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/app/app.dart';
import 'package:nomo_ui_kit/components/layout/dynamic_row/dynamic_row.dart';
import 'package:nomo_ui_kit/components/loading/loading.dart';
import 'package:nomo_ui_kit/components/loading/shimmer/loading_container.dart';
import 'package:nomo_ui_kit/components/loading/shimmer/shimmer.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class LoadingSection extends StatelessWidget {
  const LoadingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      children: [
        Text(
          "Loading",
          style: context.typography.h3,
        ),
        8.vSpacing,
        Text(
          "Used for indicating an outstanding action.",
          style: context.typography.b1,
        ),
        16.vSpacing,
        Text(
          "Spinners",
          style: context.typography.h2,
        ),
        8.vSpacing,
        NomoOutlineContainer(
          child: DynamicRow(
            children: [
              const Loading(),
              16.hSpacing,
              const Loading(
                color: Colors.greenAccent,
                endColor: Colors.blueAccent,
                strokeWidth: 4,
              ),
              16.hSpacing,
              const Loading(
                color: Colors.cyan,
                endColor: Colors.deepPurple,
                strokeWidth: 6,
              ),
              16.hSpacing,
              const Loading(
                color: primaryColor,
                endColor: Colors.deepOrangeAccent,
                strokeWidth: 8,
              ),
            ],
          ),
        ),
        32.vSpacing,
        Text(
          "Shimmer",
          style: context.typography.h2,
        ),
        8.vSpacing,
        NomoOutlineContainer(
          child: DynamicRow(
            children: [
              Shimmer(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    LoadingContainer(
                      height: 48,
                      width: 96,
                    ),
                    LoadingContainer(
                      height: 48,
                      width: 96,
                    ),
                    LoadingContainer(
                      height: 48,
                      width: 96,
                    ),
                    LoadingContainer(
                      height: 48,
                      width: 96,
                    ),
                  ].spacingH(16),
                ),
              ),
              32.hSpacing,
              Shimmer(
                duration: const Duration(milliseconds: 2000),
                gradient: const LinearGradient(
                  colors: [
                    Color(0x222FAAA5),
                    Color.fromARGB(126, 104, 115, 154),
                    Color(0x222FAAA5)
                  ],
                  stops: [0.1, 0.3, 0.4],
                  begin: Alignment(-1.0, -0.3),
                  end: Alignment(1.0, 0.3),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    LoadingContainer(
                      height: 48,
                      width: 96,
                    ),
                    LoadingContainer(
                      height: 48,
                      width: 96,
                    ),
                    LoadingContainer(
                      height: 48,
                      width: 96,
                    ),
                    LoadingContainer(
                      height: 48,
                      width: 96,
                    ),
                  ].spacingH(16),
                ),
              ),
              Shimmer(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 59, 70, 77),
                    Color.fromARGB(255, 153, 153, 153),
                    Color.fromARGB(255, 59, 70, 77)
                  ],
                  stops: [0.1, 0.3, 0.4],
                  begin: Alignment(-1.0, -0.3),
                  end: Alignment(1.0, 0.3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        LoadingContainer(
                          height: 48,
                          width: 96,
                        ),
                        LoadingContainer(
                          height: 48,
                          width: 96,
                        ),
                        LoadingContainer(
                          height: 48,
                          width: 96,
                        ),
                        LoadingContainer(
                          height: 48,
                          width: 96,
                        ),
                      ].spacingH(16),
                    ),
                    16.vSpacing,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        LoadingContainer(
                          height: 48,
                          width: 96,
                        ),
                        LoadingContainer(
                          height: 48,
                          width: 96,
                        ),
                      ].spacingH(16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
