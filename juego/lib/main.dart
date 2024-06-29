import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juego/ui/views/splash/splash.dart';


void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return SafeArea(
          child: child!,
        );
      },
      home: const SplashView(),
    );
  }
  
}