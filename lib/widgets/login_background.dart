import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({super.key, required this.child});

  final boxDecoration = const BoxDecoration(
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: boxDecoration,
        ),
        const Positioned(
          top: -80,
          left: 300,
          child: Image(
            image: AssetImage('assets/oladerecha.png'),
          ),
        ),
        const Positioned(
          top: 700,
          left: 0,
          child: Image(
            image: AssetImage('assets/olaizquierda.png'),
          ),
        ),
        const Positioned(
          top: 180,
          left: 110,
          child: Image(
            width: 312,
            height: 60,
            fit: BoxFit.cover,
            image: AssetImage('assets/foncodes-logo.png'),
          ),
        ),
        child
      ],
    );
  }
}
