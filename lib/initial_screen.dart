import 'package:flutter/material.dart';
import 'package:shopping_cart_app/screens/homescreen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/fridge1.jpg'),
          fit: BoxFit.fill,
        )),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Get The Best Electronics For Your Home @ 50% Discount',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 20),
              AppButtons(
                bgColor: Colors.transparent,
                text: 'Login',
              ),
              SizedBox(height: 20),
              AppButtons(
                borderColor: Color.fromARGB(255, 207, 126, 4),
                bgColor: Color.fromARGB(255, 207, 126, 4),
                text: 'Get Started',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class AppButtons extends StatelessWidget {
  final Color bgColor;
  final String text;
  final Color? borderColor;
  const AppButtons({
    super.key,
    required this.bgColor,
    required this.text,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(420, 56),
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: borderColor ?? Colors.white,
              ),
              borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ));
  }
}
