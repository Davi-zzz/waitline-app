import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class QueueCardWidget extends StatelessWidget {
  const QueueCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 250,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          image: AssetImage('assets/images/mock_image.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: 125,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFF7565E6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'La Barbearia',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '1,3 km from you • Quadra 402 Norte, Rua 2, Lote 20 • '
                            '77010-010 • Palmas-TO',
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                              color: Colors.white,
                            ),
                          ),
                          const Gap(14),
                          ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.white,
                              ),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(24),
                                  ),
                                ),
                              ),
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 32,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Aberto',
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF7565E6),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '08:00 - 18:00',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '6',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF7565E6),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          'na fila',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
