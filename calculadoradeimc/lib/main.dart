import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './views/home_view.dart';

void main() {
  runApp(GetMaterialApp(
      title: 'Calculadora de IMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomeView(),
    ),
    
  );
}
