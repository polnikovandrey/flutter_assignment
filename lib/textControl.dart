import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback _increment;

  const TextControl(this._increment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _increment,
      child: const Text('Increment'),
    );
  }
}
