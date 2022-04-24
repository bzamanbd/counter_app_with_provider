import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/controllers.dart';

class CustomOutputText extends StatelessWidget {
  const CustomOutputText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<NumController>(
      builder: (_,numController,__)=>Text(
          numController.num.toString(),
          textScaleFactor: 5,
        )
    );
  }
}
