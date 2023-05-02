import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/main_menu.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  static String routeName = 'splash-screen';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainMenuScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.only(top: 400.0, left: 120.0),
        child: Text(
          "Tic Tac Toe",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            color: Color.fromARGB(255, 179, 53, 95),
          ),
        ),
      ),
    );
  }
}
