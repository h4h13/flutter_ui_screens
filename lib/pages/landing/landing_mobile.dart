import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/constants.dart';

class LandingMobilePage extends StatelessWidget {
  const LandingMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/landing_page.png'),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Hello.',
                      style: TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    Text(
                      "Let's get started!.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor.withOpacity(0.75),
                      ),
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                        onPrimary: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.all(16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'or',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up with Google',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        elevation: 0,
                        primary: kPrimaryColor,
                        side: const BorderSide(
                          color: kPrimaryColor,
                          style: BorderStyle.solid,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.all(16),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "If you have already have accound let's Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
