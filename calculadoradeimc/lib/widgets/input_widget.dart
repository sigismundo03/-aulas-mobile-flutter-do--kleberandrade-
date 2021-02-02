import 'package:flutter/material.dart';


// ignore: must_be_immutable
class InputWidget extends StatelessWidget {
  final String label;
  final Function(String) oneChanged;
  final String Function(String) error;
  TextEditingController controller = TextEditingController();

  InputWidget(this.label, this.oneChanged, this.error, this.controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
         controller: controller,
        
        onChanged:  oneChanged,
         keyboardType: TextInputType.number,
         decoration: InputDecoration(
           hintText: label,
          //  border: OutlineInputBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(20)),
          //  ),
          ),
          validator: error,
      ),
    );
  }
}