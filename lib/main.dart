
import 'package:calculator/home_screen.dart';
import 'package:calculator/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>ThemeProvider(),
    )
  ],child: MyApp(),
  ),
  
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: HomeScreen(),
    );
  }
}
