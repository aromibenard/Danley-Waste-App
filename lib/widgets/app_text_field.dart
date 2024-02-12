import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  AppTextField(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.textController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 7,
              offset: Offset(1, 8),
              color: Colors.grey.withOpacity(0.4),
            )
          ]),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
            //hinttext
            hintText: hintText,
            //prfix icon
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.lightBlue.withOpacity(0.6),
            ),
            //focused border
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.white,
                )),
            //enabled border
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              width: 1.0,
              color: Colors.white,
            )),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.white,
                ))),
      ),
    );
  }
}
