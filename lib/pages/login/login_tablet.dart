import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/constants.dart';
import 'package:flutter_100_screens/pages/login/login_page.dart';

class LoginTabletPage extends StatelessWidget {
  const LoginTabletPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  final LoginModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(child: Image.asset('images/login.png')),
          Expanded(
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
              child: Material(
                color: kPrimaryColor,
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 54),
                          child: Text(
                            "Login account",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
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
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Login'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: kPrimaryColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
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
