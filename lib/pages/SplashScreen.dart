import 'package:flutter/material.dart';
import 'package:health/constants/AppColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void goToHome()async{
   await Future.delayed(const Duration(seconds: 3));
   Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
  }

  @override
  void initState() {
    // TODO: implement initState
    goToHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainOrange,
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
