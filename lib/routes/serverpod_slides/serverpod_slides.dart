import 'package:flutter/material.dart';
import 'package:my_slides/routes/serverpod_slides/slides/title.dart';
import 'package:slick_slides/slick_slides.dart';

class ServerpodSlides extends StatelessWidget {
  const ServerpodSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SlideDeck(
        slides: [
          serverpodTitleSlide,
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
      ),
    );
  }
}
