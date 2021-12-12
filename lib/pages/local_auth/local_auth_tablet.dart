import 'dart:io';

import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthTablet extends StatelessWidget {
  const LocalAuthTablet({
    Key? key,
    required this.localAuth,
  }) : super(key: key);

  final LocalAuthentication localAuth;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        'Finger Print Login',
                        style: Theme.of(context).primaryTextTheme.headline5,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.fingerprint_rounded,
                          color: Colors.white,
                          size: 32,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('or'),
                        ),
                        Icon(
                          Icons.touch_app_rounded,
                          color: Colors.white,
                          size: 32,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () async {
                  bool canCheckBiometrics = await localAuth.canCheckBiometrics;
                  if (canCheckBiometrics) {
                    List<BiometricType> availableBiometrics =
                        await localAuth.getAvailableBiometrics();
                    if (Platform.isIOS) {
                      if (availableBiometrics.contains(BiometricType.face)) {
                        // Face ID.
                      } else if (availableBiometrics
                          .contains(BiometricType.fingerprint)) {
                        bool didAuthenticate = await localAuth.authenticate(
                            localizedReason:
                                'Please authenticate to show account balance',
                            biometricOnly: true);
                      }
                    }
                  }
                },
                icon: const Icon(Icons.fingerprint),
                label: Text(
                  'Auth',
                  style: Theme.of(context).primaryTextTheme.headline6,
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.blue.shade100,
                  onPrimary: Colors.black38,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
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
