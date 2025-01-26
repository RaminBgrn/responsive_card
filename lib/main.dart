import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_card/constants/breakpoints.dart';
import 'package:responsive_card/constants/routes_name.dart';
import 'package:responsive_card/core/main_page_routes.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Responsive Card",
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: Breakpoints.getBreakPoints(),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: MainPageRoutes.getRoutes(),
      initialRoute: RouteName.home,
    );
  }
}
