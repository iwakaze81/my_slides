import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:my_slides/app.dart';
import 'package:slick_slides/slick_slides.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUrlStrategy(PathUrlStrategy());

  await SlickSlides.initialize();

  runApp(const App());
}
