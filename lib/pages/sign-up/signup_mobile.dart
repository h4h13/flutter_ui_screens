import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/constants.dart';

class SignUpMobilePage extends StatelessWidget {
  const SignUpMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset('images/signup.png'),
          const Padding(
            padding: EdgeInsets.only(bottom: 54),
            child: Text(
              "Create account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: kPrimaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Theme(
                data: ThemeData(
                  colorScheme: Theme.of(context)
                      .colorScheme
                      .copyWith(primary: Colors.white),
                  inputDecorationTheme: InputDecorationTheme(
                    hintStyle: const TextStyle(color: Colors.white38),
                    contentPadding: const EdgeInsets.all(18),
                    fillColor: Colors.white10,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                  ),
                ),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            hintText: 'Name',
                            prefixIcon: Icon(Icons.person_rounded),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            filled: true,
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email_rounded),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_rounded),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: kPrimaryColor,
                            elevation: 0,
                            padding: const EdgeInsets.all(16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
