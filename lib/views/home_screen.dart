import 'package:counter_app_with_provider/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_decr_btn.dart';
import '../widgets/custom_incr_btn.dart';
import '../widgets/custom_output_text.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:CustomAppbar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children: [
            const CustomOutputText(),
            SizedBox(height:size.height/30),
            Row(
              mainAxisAlignment : MainAxisAlignment.center,
              crossAxisAlignment : CrossAxisAlignment.center,
              children: [
                const CustomIncrBtn(),
                SizedBox(width: size.width/10),
                const CustomDecrBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
