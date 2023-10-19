
// final themeProvider =
//     StateNotifierProvider<ThemeNotifier, NomoThemeData>((ref) {
//   final initial = ZeniqThemeData(
//     colors: ThemeDB.savedTheme,
//     sizing: SizingMode.LARGE.theme,
//     textTheme: typography,
//   );

//   return ThemeNotifier(initial);
// });

// class ThemeNotifier extends StateNotifier<ZeniqThemeData> {
//   ThemeNotifier(ZeniqThemeData inital) : super(inital);

//   void changeSizingTheme(double width) {
//     final sizingMode = SizingMode.values.firstWhere(
//       (element) => width < element.width,
//       orElse: () => SizingMode.LARGE,
//     );
//     if (state.sizing == sizingMode.theme) return;

//     state = state.copyWith(sizing: sizingMode.theme);

//     Logger.log("Sizing Changed to ${sizingMode.name}");
//   }

//   void changeTheme(ColorMode themeMode) {
//     if (state.colors == themeMode.theme) return;

//     state = state.copyWith(colors: themeMode.theme)
//       ..colors.setSystemUiOverlayStyle()
//       ..colors.precacheAssets();

//     ThemeDB.saveTheme(state.colors);
//   }

//   void incrementTheme() {
//     final index = ColorMode.values.indexOf(state.colors.type);
//     final nextIndex = (index + 1) % ColorMode.values.length;
//     changeTheme(ColorMode.values[nextIndex]);
//   }
// }

