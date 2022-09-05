import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
  }) : super(key: key);
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        inputFormatters: inputFormatters,
        validator: validator,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey)),
            hintText: hintText),
      ),
    );
  }
}
