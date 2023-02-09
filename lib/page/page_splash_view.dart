import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Expanded(
            child: SizedBox(
                width: 100,
                height: 100,
                child: Image.network(
                    'https://quick.co.id/assets/icons/logo_besar.jpg')),
          ),
          const Text(
            'CARI APA PAK BOSS ?',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.red.shade700),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20))),
              onPressed: () {},
              child: const Text('Lanjut')),
          const SizedBox(
            height: 50,
          ),
        ]),
      ),
    );
  }
}
