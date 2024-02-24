import 'package:flutter/material.dart';
import 'package:slick_slides/slick_slides.dart';

final serverpodTitleSlide = TitleSlide(
  title: 'Servepodについて',
  subtitle: '2024/3/19\n吉村 拓海',
  transition: const SlickFadeTransition(color: Colors.black),
  theme: SlideThemeData.dark(
    textTheme: SlideTextThemeData.dark(
      subtitle: const SlideTextThemeData.dark()
          .subtitle
          .copyWith(fontSize: 48, height: 1.5),
    ),
  ),
);
