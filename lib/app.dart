import 'package:flutter/material.dart';
import 'package:my_slides/routes/home/home_page.dart';
import 'package:my_slides/routes/serverpod_slides/serverpod_slides.dart';
import 'package:my_slides/routes/unknown/unknown_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Slides',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        fontFamily: 'NotoSansJP',
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/serverpod_slides':
            return MaterialPageRoute(
                builder: (context) => const ServerpodSlides());
        }

        return MaterialPageRoute(
          builder: (context) => const UnknownPage(),
        );
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const UnknownPage(),
      ),
    );
  }
}
