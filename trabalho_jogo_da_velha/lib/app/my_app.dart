import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/dropdown_alert.dart';
import 'package:trabalho_jogo_da_velha/app/home/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogo da véia',
      home: const MyHomePage(title: 'Jogo da véia'),
      builder: (context, child) => Stack(
        children: [
          child!,
          const DropdownAlert()
        ],
      ),
    );
  }
}