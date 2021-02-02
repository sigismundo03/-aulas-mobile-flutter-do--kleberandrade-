import 'package:calculadoradeimc/controllers/imc_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/input_widget.dart';
import '../widgets/botao_widget.dart';

class HomeView extends StatelessWidget {
  final ImcController imcController = Get.put(ImcController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Calculadora de IMC'),
          actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
           imcController. resetFields();
          },
        )
      ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child:   GetX<ImcController>(
              builder: ( snapshot) {
               return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InputWidget("Peso(KG)", imcController.getPeso,  imcController.validatorPeso, snapshot.controllerpeso.value),
                InputWidget("Altura(cm)", imcController.getAltura,  imcController.validatoraltura, snapshot.controlleraltura.value),
                SizedBox(height: 12,),
             Text( snapshot.result.value, 
             
                     textAlign: TextAlign.center,
        
                   ),
                
          // ToggleButtons(
          //       children: <Widget>[
          //         Icon(Icons.pregnant_woman),
          //         Icon(Icons.person),
          //       ],
          //       onPressed: (int index){}, 
          //       isSelected: [

          //       ],
          //   ),

                BotaoWidget(imcController.calculateImc),
              ],
            );
              }
            ),

        ),
    );
  }
}