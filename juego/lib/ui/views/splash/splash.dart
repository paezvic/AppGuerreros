import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juego/ui/views/home/home.dart';
import 'package:juego/utils/global.colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const Home());
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              GlobalColors.primaryColor,
              const Color(0x0F460A0A).withOpacity(0.8),
            ],
            radius: 0.85,
            center: const Alignment(0.0, 0.0),
          ),
        ),
        child: const Center(
          child: Text(
            'Bienvenido a \n nuestra app \n  informativa de \n Guerreros !!!!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFFFFFFF), 
              fontSize: 30,
              fontStyle: FontStyle.italic, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
