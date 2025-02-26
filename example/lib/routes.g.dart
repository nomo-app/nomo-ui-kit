// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// RouteGenerator
// **************************************************************************

class AppRouter extends NomoAppRouter {
  final List<NavigatorObserver> navigatorObservers;
  final Map<Key, List<NavigatorObserver>> nestedNavigatorObservers;

  /// Can only be accessed after [_configCompleter] is completed
  late final RouterConfig<Object> config;

  /// Can only be accessed after [_configCompleter] is completed
  late final NomoRouterDelegate delegate;

  final Completer<RouterConfig<Object>> _configCompleter = Completer();

  Future<RouterConfig<Object>> get configFuture => _configCompleter.future;

  void init({
    Widget? inital,
    Uri? initialUri,
    RouteInformationProvider? routeInformationProvider,
    Future<bool> Function()? shouldPop,
    Future<bool> Function()? willPop,
  }) {
    delegate = NomoRouterDelegate(
      appRouter: this,
      initial: inital,
      nestedObservers: nestedNavigatorObservers,
      observers: navigatorObservers,
    );
    config = RouterConfig(
      routerDelegate: delegate,
      backButtonDispatcher:
          NomoBackButtonDispatcher(delegate, shouldPop, willPop),
      routeInformationParser: NomoRouteInformationParser(),
      routeInformationProvider: routeInformationProvider ??
          PlatformRouteInformationProvider(
            initialRouteInformation: RouteInformation(
              uri: initialUri ??
                  WidgetsBinding
                      .instance.platformDispatcher.defaultRouteName.uri,
            ),
          ),
    );
    _configCompleter.complete(config);
  }

  AppRouter({
    bool delayInit = false,
    this.navigatorObservers = const [],
    this.nestedNavigatorObservers = const {},
    Widget? inital,
    Future<bool> Function()? shouldPop,
    Future<bool> Function()? willPop,
  }) : super(
          {
            HomePageRoute.path: ([a]) {
              final typedArgs = a as HomePageArguments?;
              return HomePageRoute(
                key: typedArgs?.key,
              );
            },
            ModalSheetSectionRoute.path: ([a]) {
              final typedArgs = a as ModalSheetSectionArguments?;
              return ModalSheetSectionRoute(
                key: typedArgs?.key,
              );
            },
            ModalSheet1Route.path: ([a]) {
              final typedArgs = a as ModalSheet1Arguments?;
              return ModalSheet1Route(
                key: typedArgs?.key,
              );
            },
            TextSectionRoute.path: ([a]) {
              final typedArgs = a as TextSectionArguments?;
              return TextSectionRoute(
                key: typedArgs?.key,
              );
            },
            TextButtonWrapperRoute.path: ([a]) => TextButtonWrapperRoute(),
            DataSectionRoute.path: ([a]) {
              final typedArgs = a as DataSectionArguments?;
              return DataSectionRoute(
                key: typedArgs?.key,
              );
            },
            NotificationSectionRoute.path: ([a]) => NotificationSectionRoute(),
            IconSectionRoute.path: ([a]) {
              final typedArgs = a as IconSectionArguments?;
              return IconSectionRoute(
                key: typedArgs?.key,
              );
            },
            DialogSectionRoute.path: ([a]) {
              final typedArgs = a as DialogSectionArguments?;
              return DialogSectionRoute(
                key: typedArgs?.key,
              );
            },
            InputSectionRoute.path: ([a]) {
              final typedArgs = a as InputSectionArguments?;
              return InputSectionRoute(
                key: typedArgs?.key,
              );
            },
            DropdownSectionRoute.path: ([a]) {
              final typedArgs = a as DropdownSectionArguments?;
              return DropdownSectionRoute(
                key: typedArgs?.key,
              );
            },
            CardSectionRoute.path: ([a]) {
              final typedArgs = a as CardSectionArguments?;
              return CardSectionRoute(
                key: typedArgs?.key,
              );
            },
            ListSectionRoute.path: ([a]) {
              final typedArgs = a as ListSectionArguments?;
              return ListSectionRoute(
                key: typedArgs?.key,
              );
            },
            GridSectionRoute.path: ([a]) {
              final typedArgs = a as GridSectionArguments?;
              return GridSectionRoute(
                key: typedArgs?.key,
              );
            },
            LoadingSectionRoute.path: ([a]) {
              final typedArgs = a as LoadingSectionArguments?;
              return LoadingSectionRoute(
                key: typedArgs?.key,
              );
            },
            ExpandableSectionRoute.path: ([a]) {
              final typedArgs = a as ExpandableSectionArguments?;
              return ExpandableSectionRoute(
                key: typedArgs?.key,
              );
            },
            TileSectionRoute.path: ([a]) {
              final typedArgs = a as TileSectionArguments?;
              return TileSectionRoute(
                key: typedArgs?.key,
              );
            },
            LayoutSectionRoute.path: ([a]) {
              final typedArgs = a as LayoutSectionArguments?;
              return LayoutSectionRoute(
                key: typedArgs?.key,
              );
            },
            MenuSectionRoute.path: ([a]) {
              final typedArgs = a as MenuSectionArguments?;
              return MenuSectionRoute(
                key: typedArgs?.key,
              );
            },
          },
          _routes.expanded.where((r) => r is! NestedNavigator).toList(),
          _routes.expanded.whereType<NestedNavigator>().toList(),
        ) {
    if (!delayInit) {
      init(
        inital: inital,
        shouldPop: shouldPop,
        willPop: willPop,
      );
    } else {
      assert(
        inital == null && willPop == null && shouldPop == null,
        "Provide inital, shouldPop, willPop in the init method.",
      );
    }
  }
}

class HomePageArguments {
  final Key? key;
  const HomePageArguments({
    this.key,
  });
}

class HomePageRoute extends AppRoute implements HomePageArguments {
  @override
  final Key? key;
  HomePageRoute({
    this.key,
  }) : super(
          name: '/',
          page: HomePage(
            key: key,
          ),
        );
  static String path = '/';
}

class ModalSheetSectionArguments {
  final Key? key;
  const ModalSheetSectionArguments({
    this.key,
  });
}

class ModalSheetSectionRoute extends AppRoute
    implements ModalSheetSectionArguments {
  @override
  final Key? key;
  ModalSheetSectionRoute({
    this.key,
  }) : super(
          name: '/modalSheet',
          page: ModalSheetSection(
            key: key,
          ),
        );
  static String path = '/modalSheet';
}

class ModalSheet1Arguments {
  final Key? key;
  const ModalSheet1Arguments({
    this.key,
  });
}

class ModalSheet1Route extends AppRoute implements ModalSheet1Arguments {
  @override
  final Key? key;
  ModalSheet1Route({
    this.key,
  }) : super(
          name: '/modalSheet/sheet1',
          page: ModalSheet1(
            key: key,
          ),
        );
  static String path = '/modalSheet/sheet1';
}

class TextSectionArguments {
  final Key? key;
  const TextSectionArguments({
    this.key,
  });
}

class TextSectionRoute extends AppRoute implements TextSectionArguments {
  @override
  final Key? key;
  TextSectionRoute({
    this.key,
  }) : super(
          name: '/typography',
          page: TextSection(
            key: key,
          ),
        );
  static String path = '/typography';
}

class TextButtonWrapperArguments {
  const TextButtonWrapperArguments();
}

class TextButtonWrapperRoute extends AppRoute
    implements TextButtonWrapperArguments {
  TextButtonWrapperRoute()
      : super(
          name: '/button',
          page: TextButtonWrapper(),
        );
  static String path = '/button';
}

class DataSectionArguments {
  final Key? key;
  const DataSectionArguments({
    this.key,
  });
}

class DataSectionRoute extends AppRoute implements DataSectionArguments {
  @override
  final Key? key;
  DataSectionRoute({
    this.key,
  }) : super(
          name: '/data',
          page: DataSection(
            key: key,
          ),
        );
  static String path = '/data';
}

class NotificationSectionArguments {
  const NotificationSectionArguments();
}

class NotificationSectionRoute extends AppRoute
    implements NotificationSectionArguments {
  NotificationSectionRoute()
      : super(
          name: '/notifications',
          page: NotificationSection(),
        );
  static String path = '/notifications';
}

class IconSectionArguments {
  final Key? key;
  const IconSectionArguments({
    this.key,
  });
}

class IconSectionRoute extends AppRoute implements IconSectionArguments {
  @override
  final Key? key;
  IconSectionRoute({
    this.key,
  }) : super(
          name: '/icons',
          page: IconSection(
            key: key,
          ),
        );
  static String path = '/icons';
}

class DialogSectionArguments {
  final Key? key;
  const DialogSectionArguments({
    this.key,
  });
}

class DialogSectionRoute extends AppRoute implements DialogSectionArguments {
  @override
  final Key? key;
  DialogSectionRoute({
    this.key,
  }) : super(
          name: '/dialogs',
          page: DialogSection(
            key: key,
          ),
        );
  static String path = '/dialogs';
}

class InputSectionArguments {
  final Key? key;
  const InputSectionArguments({
    this.key,
  });
}

class InputSectionRoute extends AppRoute implements InputSectionArguments {
  @override
  final Key? key;
  InputSectionRoute({
    this.key,
  }) : super(
          name: '/input',
          page: InputSection(
            key: key,
          ),
        );
  static String path = '/input';
}

class DropdownSectionArguments {
  final Key? key;
  const DropdownSectionArguments({
    this.key,
  });
}

class DropdownSectionRoute extends AppRoute
    implements DropdownSectionArguments {
  @override
  final Key? key;
  DropdownSectionRoute({
    this.key,
  }) : super(
          name: '/dropdown',
          page: DropdownSection(
            key: key,
          ),
        );
  static String path = '/dropdown';
}

class CardSectionArguments {
  final Key? key;
  const CardSectionArguments({
    this.key,
  });
}

class CardSectionRoute extends AppRoute implements CardSectionArguments {
  @override
  final Key? key;
  CardSectionRoute({
    this.key,
  }) : super(
          name: '/card',
          page: CardSection(
            key: key,
          ),
        );
  static String path = '/card';
}

class ListSectionArguments {
  final Key? key;
  const ListSectionArguments({
    this.key,
  });
}

class ListSectionRoute extends AppRoute implements ListSectionArguments {
  @override
  final Key? key;
  ListSectionRoute({
    this.key,
  }) : super(
          name: '/list',
          page: ListSection(
            key: key,
          ),
        );
  static String path = '/list';
}

class GridSectionArguments {
  final Key? key;
  const GridSectionArguments({
    this.key,
  });
}

class GridSectionRoute extends AppRoute implements GridSectionArguments {
  @override
  final Key? key;
  GridSectionRoute({
    this.key,
  }) : super(
          name: '/grid',
          page: GridSection(
            key: key,
          ),
        );
  static String path = '/grid';
}

class LoadingSectionArguments {
  final Key? key;
  const LoadingSectionArguments({
    this.key,
  });
}

class LoadingSectionRoute extends AppRoute implements LoadingSectionArguments {
  @override
  final Key? key;
  LoadingSectionRoute({
    this.key,
  }) : super(
          name: '/loading',
          page: LoadingSection(
            key: key,
          ),
        );
  static String path = '/loading';
}

class ExpandableSectionArguments {
  final Key? key;
  const ExpandableSectionArguments({
    this.key,
  });
}

class ExpandableSectionRoute extends AppRoute
    implements ExpandableSectionArguments {
  @override
  final Key? key;
  ExpandableSectionRoute({
    this.key,
  }) : super(
          name: '/expandable',
          page: ExpandableSection(
            key: key,
          ),
        );
  static String path = '/expandable';
}

class TileSectionArguments {
  final Key? key;
  const TileSectionArguments({
    this.key,
  });
}

class TileSectionRoute extends AppRoute implements TileSectionArguments {
  @override
  final Key? key;
  TileSectionRoute({
    this.key,
  }) : super(
          name: '/tile',
          page: TileSection(
            key: key,
          ),
        );
  static String path = '/tile';
}

class LayoutSectionArguments {
  final Key? key;
  const LayoutSectionArguments({
    this.key,
  });
}

class LayoutSectionRoute extends AppRoute implements LayoutSectionArguments {
  @override
  final Key? key;
  LayoutSectionRoute({
    this.key,
  }) : super(
          name: '/layout',
          page: LayoutSection(
            key: key,
          ),
        );
  static String path = '/layout';
}

class MenuSectionArguments {
  final Key? key;
  const MenuSectionArguments({
    this.key,
  });
}

class MenuSectionRoute extends AppRoute implements MenuSectionArguments {
  @override
  final Key? key;
  MenuSectionRoute({
    this.key,
  }) : super(
          name: '/menu',
          page: MenuSection(
            key: key,
          ),
        );
  static String path = '/menu';
}
