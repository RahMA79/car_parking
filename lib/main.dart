import 'package:car_parking/Components/Notifications.dart';
import 'package:car_parking/OnboardingScreens/SplashScreen.dart';
//import 'package:car_parking/OnboardingScreens/onBoarding_Screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  LocalNotificationService.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Parking',
      theme: ThemeData(useMaterial3: true),
      home: const Splash_Screen(),
    );
  }
}
