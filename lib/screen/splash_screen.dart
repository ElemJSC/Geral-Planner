// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      // Navegar para a tela principal após 3 segundos
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 229, 222), // Defina a cor de fundo da Scaffold como rosa
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagem anterior com bordas arredondadas
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0), // Ajuste o valor conforme desejado
              child: Image.asset('assets/images/splash.png', width: 300, height: 300),
            ),
            const SizedBox(height: 20), // Espaço entre a imagem e o texto
            // Texto "Geral planner" que aparece de uma vez
            const Text(
              'Geral planner',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Cor do texto
              ),
            ),
          ],
        ),
      ),
    );
  }
}
