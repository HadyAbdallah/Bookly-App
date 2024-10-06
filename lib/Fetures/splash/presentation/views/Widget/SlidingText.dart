import 'package:flutter/material.dart';

class SidingText extends StatelessWidget {
  const SidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Start Read Start Learn",
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
