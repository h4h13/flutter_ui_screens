import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/constants.dart';
import 'package:flutter_100_screens/pages/login/login_page.dart';

class LoginMobilePage extends StatelessWidget {
  const LoginMobilePage({
    Key? key,
    required this.model,
  }) : super(key: key);

  final LoginModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset('images/login.png'),
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              "Login account",
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
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            filled: true,
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email_rounded),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => model.validateEmail(value),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_rounded),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final result = await model.login();
                            if (result) {
                              Navigator.pop(context);
                            }
                          },
                          child: model.isLoading
                              ? const CircularProgressIndicator()
                              : const Text('Login'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: kPrimaryColor,
                            padding: const EdgeInsets.all(16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
