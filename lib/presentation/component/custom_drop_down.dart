import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: [],
      value: '',
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black,
      ),
      hint: Text(
        'Choose your location',
        style: const TextStyle(color: Colors.black),
      ),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        labelText: '',
        labelStyle: const TextStyle(color: Colors.black),
        floatingLabelStyle: TextStyle(color: AppColors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
                color: AppColors.grey,
                width: 1.5,
                style: BorderStyle.solid)
        ),
      ),
      isDense: true,
      isExpanded: true,
      style: const TextStyle(color:  Colors.black),
      onChanged: (value) {
        setState(() {

        });
      },
    );
  }
}
