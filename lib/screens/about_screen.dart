import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state_logic/change_theme_logic.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int themeIndex = context.watch<ChangeThemeLogic>().themeIndex;

    return Container(
        color: themeIndex == 1
            ? const Color.fromARGB(255, 14, 46, 110)
            : Colors.black,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow, width: 2),
              ),
              child: const Text("About Our Developers",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow)),
            ),
            _buildDeveloperInfo(
                "Chann Kimlong",
                "Hi, I am a fulstack web and mobile app developer. I am a student at CADT.",
                "assets/kimlong.jpg"),
            _buildDeveloperInfo(
                "Phon Ponleu",
                "Hi, I am a fulstack web and mobile app developer. I am a student at CADT.",
                "assets/ponleu.jpg"),
            _buildDeveloperInfo(
                "Sok Pisey",
                "Hi, I am a fulstack web and mobile app developer. I am a student at CADT.",
                "assets/pisey.jpg"),
            _buildDeveloperInfo(
                "Hemrithy Bondeth",
                "Hi, I am a fulstack web and mobile app developer. I am a student at CADT.",
                "assets/bondeth.jpg"),
            const SizedBox(height: 20),
          ],
        ));
  }

  Widget _buildDeveloperInfo(name, desc, image) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow, width: 2),
      ),
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
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://up.yimg.com/ib/th?id=OIP.cOz92GK9w_2_VxUIWBL0ngHaHa&pid=Api&rs=1&c=1&qlt=95&w=124&h=124'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://s.yimg.com/fz/api/res/1.2/_5dmtTdXQzStB8e.53m2EQ--~C/YXBwaWQ9c3JjaGRkO2g9NzI7cT04MDt3PTcy/https://s.yimg.com/zb/imgv1/e9d6381f-6a16-39d9-b6f9-1467838c022c/t_500x300'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://tse1.mm.bing.net/th?id=OIP.oB6LxM8vycBZQmJioMmSMAHaEo&pid=Api&P=0&h=220'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
