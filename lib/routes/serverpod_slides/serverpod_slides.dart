import 'package:flutter/material.dart';
import 'package:slick_slides/slick_slides.dart';

class ServerpodSlides extends StatelessWidget {
  const ServerpodSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideDeck(
      slides: [
        TitleSlide(
          title: 'Servepodについて',
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
