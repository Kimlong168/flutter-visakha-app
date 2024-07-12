import 'package:flutter/material.dart';
import 'news_detail_screen.dart';
import 'package:provider/provider.dart';
import '../state_logic/change_theme_logic.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int themeIndex = context.watch<ChangeThemeLogic>().themeIndex;
    return Container(
      color: themeIndex == 1
          ? const Color.fromARGB(255, 14, 46, 110)
          : Colors.black,
      child: ListView(
        children: [
          _buildHeroVideo(context),
          _buildVideosContainer(context, ""),
          _buildVideosContainer(context, "CLUBS"),
          _buildVideosContainer(context, "PLAYERS"),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildHeroVideo(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NewDetailScreen(
                    title: "History of Visakha Football Club",
                    description:
                        "Visakha Football Club (Khmer: ក្លឹបបាល់ទាត់វិសាខា, Klœ̆b Băltoăt Vĭsakha) is an association football club based in Phnom Penh.",
                    image:
                        "https://tse2.mm.bing.net/th?id=OIP.S-rDp8ULYa6wEVrKANRbsQHaE8&pid=Api&P=0&h=220",
                  )),
        );
      },
      child: Container(
          padding: const EdgeInsets.all(8),
          width: double.maxFinite,
          height: 250,
          child: Stack(
            children: [
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.S-rDp8ULYa6wEVrKANRbsQHaE8&pid=Api&P=0&h=220"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        const Color.fromARGB(255, 4, 4, 4)
                            .withOpacity(0.8), // Shadow color
                        const Color.fromARGB(255, 12, 12, 12).withOpacity(0.8),
                        const Color.fromARGB(255, 12, 12, 12).withOpacity(0.8),
                        const Color.fromARGB(255, 12, 12, 12).withOpacity(0.6),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 22, 57, 127),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.play_arrow, color: Colors.yellow),
                          SizedBox(width: 5),
                          Text(
                            "Play",
                            style: TextStyle(color: Colors.yellow),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      width: 350,
                      child: Text(
                        "Visakha Football Club (Khmer: ក្លឹបបាល់ទាត់វិសាខា, Klœ̆b Băltoăt Vĭsakha) is an association football club based in Phnom Penh.",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "July 03 2024",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "100k",
                          style: TextStyle(color: Colors.yellow),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _buildVideosContainer(context, title) {
    return Container(
        margin: const EdgeInsets.only(top: 15),
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            title != ""
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(title ?? "",
                            style: const TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 14)),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text("View All",
                                  style: const TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.yellow, size: 12),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 8),
                  _buildVideoCard(context),
                  const SizedBox(width: 10),
                  _buildVideoCard(context),
                  const SizedBox(width: 10),
                  _buildVideoCard(context),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ],
        ));
  }

  Widget _buildVideoCard(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NewDetailScreen(
                    title: "History of Visakha Football Club",
                    description:
                        "Visakha Football Club (Khmer: ក្លឹបបាល់ទាត់វិសាខា, Klœ̆b Băltoăt Vĭsakha) is an association football club based in Phnom Penh.",
                    image:
                        "https://tse3.mm.bing.net/th?id=OIP.VI9iMqf2ezVBxh_-Wrg-RgHaE8&pid=Api&P=0&h=220",
                  )),
        );
      },
      child: SizedBox(
          width: 270,
          child: Stack(
            children: [
              Container(
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.VI9iMqf2ezVBxh_-Wrg-RgHaE8&pid=Api&P=0&h=220"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        const Color.fromARGB(255, 4, 4, 4)
                            .withOpacity(0.8), // Shadow color
                        const Color.fromARGB(255, 12, 12, 12).withOpacity(0.8),
                        const Color.fromARGB(255, 12, 12, 12).withOpacity(0.8),
                        const Color.fromARGB(255, 12, 12, 12).withOpacity(0.6),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 22, 57, 127),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.yellow,
                            size: 12,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Play",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      width: 260,
                      child: Text(
                        "Visakha Football Club (Khmer: ក្លឹបបាល់ទាត់វិសាខា, Klœ̆b Băltoăt Vĭsakha) is an association football club based in Phnom Penh.",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Expire date: 16/06/2024",
                      style: TextStyle(color: Colors.yellow, fontSize: 10),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.yellow,
                          size: 12,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "July 03 2024",
                          style: TextStyle(color: Colors.yellow, fontSize: 10),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "100k",
                          style: TextStyle(color: Colors.yellow, fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
