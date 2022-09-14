// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                  children: [
                    const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.height* .05),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              style: const TextStyle(
                                color: Colors.black87
                              ),
                              validator: (value) {
                                if(value!.isEmpty || !value.contains('@')) {
                                  return 'Please provide a valid email address';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  color: Colors.black87,
                                ),
                                hintText: 'Enter email address',
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                fillColor: Colors.white.withOpacity(.5),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none
                                )
                              ),
                            ),
                            const SizedBox(height: 14),
                            TextFormField(
                              style: const TextStyle(
                                color: Colors.black87
                              ),
                              validator: (value) {
                                if(value!.isEmpty || !value.contains('@')) {
                                  return 'Please provide a password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: Colors.black87,
                                ),
                                hintText: 'Enter email address',
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                fillColor: Colors.white.withOpacity(.5),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none
                                )
                              ),
                            ),
                            const SizedBox(height: 14),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'LOGIN'
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.purple.withOpacity(0.9).
                              )
                            )
                          ],
                        ),
                      ),
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