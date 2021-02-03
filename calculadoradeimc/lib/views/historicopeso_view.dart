import 'package:calculadoradeimc/widgets/drawer_widegt.dart';
import 'package:flutter/material.dart';

class HistoricoPesoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       drawer: Drawer(
        child: DrawerWidget(),
      ),
    );
  }
}