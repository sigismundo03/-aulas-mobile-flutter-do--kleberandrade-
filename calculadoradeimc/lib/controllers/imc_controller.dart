import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ImcController extends GetxController {
 var result = 'Informe seus dados'.obs;
 var peso = ''.obs;
 var altura = ''.obs;
 var controllerpeso = TextEditingController().obs;
 var controlleraltura = TextEditingController().obs;


 void getPeso(String peso){
   this.peso.value = peso;
 }
 void getAltura(String altura) =>   this.altura.value = altura;
 
 
 String validatorPeso(String peso){
   return peso.isEmpty ? "Insira seu peso!": null;
 } 

  String validatoraltura(String altura){
   return altura.isEmpty ? "Insira sua altura!": null;
 } 
 
 void resetFields() {
   result.value = 'Informe seus dados';
   controllerpeso.value.text = '';
   controlleraltura.value.text = '';
   peso.value = controllerpeso.value.text;
   altura.value =controlleraltura.value.text;
 } 

 void calculateImc(){
     if(altura.isNotEmpty){
        double weight = double.parse(peso.value);
        double height = double.parse(altura.value) / 100.0;
        double imc = weight / (height * height);
        resultado(imc);
     }
    
 }

 void resultado( double imc ){
    result.value = "IMC = ${imc.toStringAsPrecision(2)}\n";
    if (imc < 18.6)
        result.value += "Abaixo do peso";
      else if (imc < 25.0)
        result.value += "Peso ideal";
      else if (imc < 30.0)
        result.value += "Levemente acima do peso";
      else if (imc < 35.0)
        result.value += "Obesidade Grau I";
      else if (imc < 40.0)
        result.value += "Obesidade Grau II";
      else
        result.value += "Obesidade Grau IIII";
 }

}