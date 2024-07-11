import 'package:flutter/material.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key, required this.updateParent});
  final void Function() updateParent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Rahma',
        ),
      ),
    );
  }
}
