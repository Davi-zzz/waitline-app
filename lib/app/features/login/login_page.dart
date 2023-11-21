import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends HookWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7565E6),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: 'splash-logo',
                child: Text(
                  'WAIT LINE',
                  style: GoogleFonts.racingSansOne(
                    color: Colors.white,
                    fontSize: 64,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Gap(20),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('E-mail'),
                    ),
                  ),
                  const Gap(20),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Senha'),
                    ),
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Esqueceu a Senha?',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF6A737D),
                        ),
                      )
                    ],
                  ),
                  const Gap(16),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/main');
                    },
                    child: Text(
                      'Entrar',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Gap(20),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: Divider(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
