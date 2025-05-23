import 'package:flutter/material.dart';
import 'package:master_ifab/config/config.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp.router(
      routerConfig: appRouter, 
      debugShowCheckedModeBanner: false,
      theme: AppTheme(electusColor: 0).getTheme(),
      
    );
  }
}
