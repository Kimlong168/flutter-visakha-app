import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'state_logic/change_theme_logic.dart';
import 'layouts/layout.dart';

Widget providerStateApp() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ChangeThemeLogic()),
    ],
    child: StateApp(),
  );
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    int index = context.watch<ChangeThemeLogic>().themeIndex;

    return MaterialApp(
      home: Layout(),
      themeMode: index == 0
          ? ThemeMode.system
          : index == 1
              ? ThemeMode.light
              : ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
