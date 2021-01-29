import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final Function(String) oneChanged;
  final String Function(String) error;

  InputWidget(this.label, this.oneChanged, this.error);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged:  oneChanged,
         keyboardType: TextInputType.number,
         decoration: InputDecoration(
           hintText: "oero",
           border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
           ),
          ),
          validator: error,
      ),
    );
  }
}