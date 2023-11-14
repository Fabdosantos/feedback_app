import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120, bottom: 24),
              child: Lottie.network(
                "https://lottie.host/628bd0a7-a0ec-4f8f-92db-b75687ab9b78/GAcpd8syHN.json",
              ),
            ),
            const Text(
              'Obrigado, e volte sempre!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                letterSpacing: -1.2,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
