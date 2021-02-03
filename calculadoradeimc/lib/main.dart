import 'package:calculadoradeimc/routes/app_pages.dart';
import 'package:calculadoradeimc/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './views/home_view.dart';

void main() {
  runApp(GetMaterialApp(
    
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de IMC',
      getPages:AppPages.routes,
      initialRoute: Routes.HOME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
         
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomeView(),
    ),
    
  );
}
