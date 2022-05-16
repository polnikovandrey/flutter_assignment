import 'package:flutter/material.dart' as material;

class Text extends material.StatelessWidget {
  final String _text;

  const Text(this._text, {material.Key? key}) : super(key: key);

  @override
  material.Widget build(material.BuildContext context) {
    return material.Text(
      _text,
      style: const material.TextStyle(fontSize: 28),
      textAlign: material.TextAlign.center,
    );
  }
}
