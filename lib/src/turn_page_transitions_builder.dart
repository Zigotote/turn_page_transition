import 'package:flutter/material.dart';
import 'package:turn_page_transition/src/turn_page_transition_widget.dart';

class TurnPageTransitionsBuilder extends PageTransitionsBuilder {
  const TurnPageTransitionsBuilder({required this.color});

  final Color color;

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return TurnPageTransitionWidget(animation: animation, color: color, child: child);
  }
}
