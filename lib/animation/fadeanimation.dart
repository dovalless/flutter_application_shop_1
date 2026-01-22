// Migrado para simple_animations ^5.0.0 y supercharged ^2.1.1

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation({required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..scene(
        begin: Duration.zero,
        duration: 500.milliseconds,
      )
      .tween('opacity', Tween(begin: 0.0, end: 1.0))
      .tween('translateY', Tween(begin: -30.0, end: 0.0), curve: Curves.easeOut);

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (500 * delay).round()),
      tween: tween,
      duration: tween.duration,
      child: child,
      builder: (context, value, child) => Opacity(
        opacity: value.get<double>('opacity'),
        child: Transform.translate(
          offset: Offset(0, value.get<double>('translateY')),
          child: child,
        ),
      ),
    );
  }
}