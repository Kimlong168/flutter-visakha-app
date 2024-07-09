import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: const Color.fromARGB(255, 14, 46, 110),
      height: double.infinity,
      padding: const EdgeInsets.all(12),
      child: ListView(children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 14, 46, 110),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 14, 46, 110),
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ],
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://tse1.mm.bing.net/th?id=OIP.AZOoZlYz7dx0c7gJUkJSKQHaEK&pid=Api&P=0&h=220'),
                  fit: BoxFit.fill,
                  opacity: 0.5,
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(97, 12, 33, 127), BlendMode.darken),
                ),
              ),
            ),
            const Positioned(
              child: Text(
                'Tap to request a card',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        InkWell(
          onTap: () {},
          child: const Text(
            "Read Terms and Conditions",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.yellow),
          ),
        ),
      ]),
    );
  }
}
