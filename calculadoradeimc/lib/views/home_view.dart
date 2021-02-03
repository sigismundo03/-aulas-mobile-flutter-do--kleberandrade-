import 'package:calculadoradeimc/controllers/imc_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/input_widget.dart';
import '../widgets/botao_widget.dart';
import '../widgets/drawer_widegt.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  final ImcController imcController = Get.put(ImcController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              imcController.resetFields();
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      body: SingleChildScrollView(
        child: GetX<ImcController>(
          initState: (_){
             imcController.resetFields();
          },
         
          builder: (snapshot){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InputWidget(
                  "Digite seu peso!",
                  imcController.getPeso,
                  imcController.validatorPeso,
                  snapshot.controllerpeso.value,
                  "Peso(KG)",
                ),
                InputWidget(
                  "Digite sua Altura!",
                  imcController.getAltura,
                  imcController.validatoraltura,
                  snapshot.controlleraltura.value,
                  'Altura(cm)',
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sexo"),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ToggleButtons(
                          children: <Widget>[
                            Icon(
                              Icons.pregnant_woman,
                              size: 70,
                            ),
                            Icon(
                              Icons.person,
                              size: 70,
                            ),
                          ],
                          onPressed: snapshot.selections,
                          isSelected: snapshot.selectionsBotoes,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  snapshot.result.value,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:snapshot.color.firstRebuild ? Colors.black:snapshot.color.value,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                BotaoWidget(imcController.calculateImc),
                
              ],
            ),
          );
        }),
      ),
      
    );
  }
}
