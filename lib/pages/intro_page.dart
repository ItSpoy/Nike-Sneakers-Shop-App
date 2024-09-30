import 'package:e_commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo 
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'lib/images/nike.png',
                  height: 300,
                  ),
              ),
              const SizedBox(height: 10),
              //title
              const Text(
                "Just Do It !" ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 60),
              // sub title
              const Text(
                "Buy New Sneakers And Custom Kicks Made With Premmium Quality" ,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                ),
                textAlign:TextAlign.center,
              ),
              const SizedBox(height: 65),
              // start now btn
              GestureDetector(
                onTap: () => Navigator.push(
                  context , 
                  MaterialPageRoute(
                    builder:(context) => HomePage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child:  Text(
                      "Shop Now" ,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
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