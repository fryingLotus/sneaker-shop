import 'package:flutter/material.dart';
import 'package:learning/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/nikeLogo.png',
                  height: 240,
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Just do it",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage())),

                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.circular(12.0)),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child:  Text(
                      'Shop now',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                  ),
                ),
              )

              // title
              // sub title
            ],
          ),
        ),
      ),
    );
  }
}
