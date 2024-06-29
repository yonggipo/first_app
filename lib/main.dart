import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First App',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.yellow,
                Colors.purple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Welcome to Flutter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        // body: Container(
        //   width: double.infinity,
        //   padding: const EdgeInsets.all(12),
        //   child: const Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Text(
        //         'Flutter - The Complete Guide Course',
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //           fontSize: 24,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       SizedBox(height: 16),
        //       Text(
        //         'Learn Flutter step-by-step, from the ground up.',
        //         textAlign: TextAlign.center,
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
