import 'package:calculadoradeimc/controllers/imc_controller.dart';
import 'package:calculadoradeimc/widgets/card_widget.dart';
import 'package:calculadoradeimc/widgets/drawer_widegt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoricoPesoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Historico"),
      ),
       drawer: Drawer(
        child: DrawerWidget(),
      ),
      body: GetX<ImcController>(
        builder: (snapshot){
          return ListView.builder(
            itemCount: snapshot.historicodepeso.length,
            itemBuilder: (context,index){
              return  CardWidgwt(
                snapshot.historicodepeso[index].imc,
                snapshot.historicodepeso[index].altura,
                snapshot.historicodepeso[index].peso,
                snapshot.historicodepeso[index].sexo,
                snapshot.historicodepeso[index].id,
              );
            },
            
          );
        } 
      ),
    );
  }
}