import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/controllers.dart';

class CustomIncrBtn extends StatelessWidget {
  const CustomIncrBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NumController>(
      builder: (_,numController,__)=>ElevatedButton(
        onPressed: ()=> numController.incrNumber(),
        child: const Text('Increment')
      ),
    );
  }
}
