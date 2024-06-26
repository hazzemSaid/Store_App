import 'package:flutter/material.dart';

class fild extends StatelessWidget {
  final String type;
  Function(dynamic)? onchanged;
  fild({required this.type, required this.onchanged});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: onchanged,
        decoration: InputDecoration(
          label: Text('$type'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
