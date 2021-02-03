import 'package:calculadoradeimc/routes/app_routes.dart';
import 'package:calculadoradeimc/views/historicopeso_view.dart';
import 'package:calculadoradeimc/views/home_view.dart';
import 'package:get/get.dart';

class AppPages{
  static final routes = [

    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
    ),
     GetPage(
      name: Routes.HISTORICO,
      page: () =>  HistoricoPesoView(),
    ),

  ];
}