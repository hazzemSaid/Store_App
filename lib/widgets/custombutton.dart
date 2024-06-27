import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  final String type;
  VoidCallback? onTap;

  custombutton({required this.type, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.cyan[600],
      ),
      alignment: Alignment.center,
      child: InkWell(
        onTap: onTap,
        child: Text(
          '$type',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}


/*   */