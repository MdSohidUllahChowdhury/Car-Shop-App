import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_app/Views/car_main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Container(
          margin: const EdgeInsets.only(top: 15, left: 15),
          child: Column(
            
            children: [
              const Align(alignment: Alignment.topLeft,
                child: Text(
                  'Eays Way To Buy \nYour Dream Car',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontFamily: 'Bold'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(alignment: Alignment.topLeft,
                child:Text(
                  'Simplify your car search.\nFind your perfect ride with our app\nYour dream car, a tap away.\nBrowse, compare, and buy.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'lib/Assets/Image/car0.png',
                height: 350,
                fit: BoxFit.fitWidth,
                alignment: Alignment.centerRight,
              ),
              const SizedBox(
                height: 35,
              ),             
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(
                        () => CarMainScreen(),
                        transition: Transition.leftToRight,
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      elevation: WidgetStateProperty.all(0),
                      minimumSize:WidgetStateProperty.all<Size>(const Size(280, 55)),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.2,
                          fontFamily: 'Bold'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}