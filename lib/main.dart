import 'package:flutter/material.dart';
import 'package:newroombooking/theme.dart';
import 'package:sizer/sizer.dart';
import 'package:newroombooking/phoneinput.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: const PhoneInputScreen(),
        );
      },
    );
  }
}
