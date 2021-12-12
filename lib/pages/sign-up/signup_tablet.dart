import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/constants.dart';

class SignUpTabletPage extends StatelessWidget {
  const SignUpTabletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset('images/signup.png'),
          ),
          Expanded(
            child: Theme(
              data: ThemeData(
                colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: Colors.white,
                    ),
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
                elevation: 12,
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
                            "Create account",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
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
                          height: 54,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: kPrimaryColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
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
