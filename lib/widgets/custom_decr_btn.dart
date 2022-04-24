import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/controllers.dart';

class CustomDecrBtn extends StatelessWidget {
  const CustomDecrBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NumController>(
      builder: (_,numController,__)=>ElevatedButton(
        onPressed: ()=> numController.decrNumber(),
      child: const Text('Decrement'))
    );
  }
}
