import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final Function(String) onChanged;
  final int maxLength; // maxLength zorunlu hale getirildi
  final Widget? titleIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.onChanged,
    this.titleIcon,
    required this.maxLength, // Zorunlu parametre
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // inputFormatters: [
      //   FilteringTextInputFormatter.deny(RegExp(r'\s')), // Boşluk karakterlerini engeller
      // ],
      maxLength: maxLength,
      controller: controller,
      decoration: InputDecoration(
        counterText: "",
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 16,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade700,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade700,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Theme.of(context).scaffoldBackgroundColor,
        prefixIcon: titleIcon,
      ),
      cursorColor: Theme.of(context).focusColor,
      style: Theme.of(context).textTheme.titleLarge,
      onChanged: (value) {
        onChanged(value);
      },
      onSubmitted: (value) {
        FocusScope.of(context).unfocus(); // Klavyeyi kapatma
      },
    );
  }
}
