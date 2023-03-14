import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final bool isSmall;
  final String text;
  final void Function() function;
  const ButtonWidget(this.isSmall, this.text, this.function, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
          backgroundColor: isSmall ? Color(0xFF2E4F4F) : Color(0xFF393E46),
          padding: EdgeInsets.symmetric(
              horizontal: isSmall ? 30.0 : 60.0,
              vertical: isSmall ? 10.0 : 15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text(
        text,
        style: TextStyle(color: Color(0xFFE5E5CB), fontSize: isSmall ? 16 : 24),
      ),
    );
  }
}
