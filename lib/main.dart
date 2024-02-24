import 'package:flutter/material.dart';
import 'package:slick_slides/slick_slides.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SlickSlides.initialize();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Slides',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const _TestSlides(),
    );
  }
}

class _TestSlides extends StatelessWidget {
  const _TestSlides();

  @override
  Widget build(BuildContext context) {
    return SlideDeck(
      slides: [
        TitleSlide(
          title: 'Slick Slides',
          subtitle: 'Stunning presentations in Flutter',
          transition: const SlickFadeTransition(color: Colors.black),
        ),
        BulletsSlide(
          title: 'What is Slick Slides?',
          bulletByBullet: true,
          bullets: const [
            'Bullet number 1',
            'A second bullet',
          ],
          transition: const SlickFadeTransition(color: Colors.black),
        ),
      ],
    );
  }
}
