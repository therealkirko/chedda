import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.purple.withOpacity(0.9),
                Colors.purple.withOpacity(0.8),
                Colors.purple.withOpacity(0.7),
                Colors.purple.withOpacity(0.6),
                Colors.purple.withOpacity(0.5),
                Colors.purple.withOpacity(0.4),
                Colors.purple.withOpacity(0.1),
                Colors.purple.withOpacity(0.05),
                Colors.purple.withOpacity(0.025),
              ],
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Chedda',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}