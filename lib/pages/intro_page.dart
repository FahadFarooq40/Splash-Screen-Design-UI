import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_app/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 40, top: 160),
            child: Image.asset("images/chicken.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "Welcome to GrocerEase, the ultimate solution for all your grocery shopping needs! ",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                  fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "EveryDay Enjoy The Groceries",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(fontSize: 15, color: Colors.grey[700]),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  "Get Sarted!",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
