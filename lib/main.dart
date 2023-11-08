import 'package:flutter/material.dart';
import 'home/mental_settings.dart';
import 'home/mental_splashscreen.dart';
import 'home/mental_theme_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeNotifier>(context).getTheme(),
      title: 'My App',
      home:  const SplashScreen(),
      routes: {
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
