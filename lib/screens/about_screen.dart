import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 14, 46, 110),
        child: ListView(
          children: [
            _buildDeveloperInfo(
                "Chann Kimlong",
                "Hi, I am a fulstack web and mobile app developer. I am a student at CADT. I am a passionate developer who loves to learn new things and solve problems.",
                "assets/kimlong.jpg"),
            _buildDeveloperInfo(
                "Phon Ponleu",
                "Hi, I am a fulstack web and mobile app developer. I am a student at CADT. I am a passionate developer who loves to learn new things and solve problems.",
                "assets/ponleu.jpg"),
            _buildDeveloperInfo(
                "Sok Pisey",
                "Hi, I am a fulstack web and mobile app developer. I am a student at CADT. I am a passionate developer who loves to learn new things and solve problems.",
                "assets/ponleu.jpg"),
            _buildDeveloperInfo(
                "Chann Kimlong",
                "Hi, I am a fulstack web and mobile app developer. I am a student at CADT. I am a passionate developer who loves to learn new things and solve problems.",
                "assets/ponleu.jpg"),
            _buildDeveloperInfo(
                "Hemrithy Bondeth",
                "Hi, I am a fulstack web and mobile app developer. I am a student at CADT. I am a passionate developer who loves to learn new things and solve problems.",
                "assets/ponleu.jpg"),
            const SizedBox(height: 20),
          ],
        ));
  }

  Widget _buildDeveloperInfo(name, desc, image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow),
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
