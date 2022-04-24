import 'package:counter_app_with_provider/themes/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/controllers.dart';
import 'themes/themes.dart';
import 'views/home_screen.dart';
void main() {
  runApp( ChangeNotifierProvider<NumController>(
    create: (_)=> NumController(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  final String _title = 'Counter with provider'.toUpperCase();
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: ColorPalette.swColor,
        primaryColor: ColorPalette.primaryColor,
        secondaryHeaderColor: ColorPalette.secondaryColor,
        scaffoldBackgroundColor: ColorPalette.scaffoldBgColor,
        textTheme: Themes.txtThm,
      ),
      routes: {
        '/':(context) => HomeScreen(title:_title),
      },
    );
  }
}
