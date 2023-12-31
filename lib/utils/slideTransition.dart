import 'package:flutter/cupertino.dart';

class SlideRoute extends PageRouteBuilder {
  final Widget page;
  final double x;
  final double y;
  SlideRoute({required this.page, required this.x, required this.y})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: Offset(x, y),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}
