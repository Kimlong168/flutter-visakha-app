import 'package:flutter/material.dart';
import 'package:date_count_down/date_count_down.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';
import 'news_detail_screen.dart';
import 'dart:ui';
import 'match_detail_screen.dart';
import '../layouts/layout.dart';
import 'offer_and_promotion_screen.dart';
import 'fixtures_and_results_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1),
      color: const Color.fromARGB(255, 14, 46, 110),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 15),
          _buildCountdown(),
          _buildMatchCard(),
          _buildBecomeFanBanner(),
          _buildAllMatchCards(),
          _buildOfferandPromotions(),
          _buildNewsandEvent(),
        ],
      ),
    );
  }

  Widget _buildCountdown() {
    return Center(
      child: Column(
        children: [
          const Text("Cambodian Youth League U16",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              )),
          const Text("Match Countdown",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow,
                ),
                child: CountDownText(
                  due: DateTime.utc(2024, 7, 29, 8, 0, 0),
                  finishedText: "Match Started",
                  showLabel: false,
                  longDateName: true,
                  style: const TextStyle(
                      color: Color.fromARGB(215, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "DAYS     HRS     MINS     SECS",
                style: TextStyle(fontSize: 10, color: Colors.yellow),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMatchCard() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: const Color.fromARGB(255, 4, 23, 60),
        ),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.network(
                      "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const SizedBox(
                        width: 85,
                        child: Text(
                          "Visakha FC",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "Sun, 16 July 2024",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Visakha Training Center",
                        style: TextStyle(color: Colors.yellow, fontSize: 12),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "KICK IFF 8:00 AM",
                        style: TextStyle(color: Colors.yellow, fontSize: 12),
                      ),
                      const SizedBox(height: 5),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MatchDetailScreen()),
                          );
                        },
                        child: const Text(
                          "Details",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Image.network(
                      "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333371.png",
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const SizedBox(
                        width: 85,
                        child: Text(
                          "Boeungket FC",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBecomeFanBanner() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Layout(pageIndex: 3),
            ));
      },
      child: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 25,
            ),
            const Text(
              "BECOME VISAKHA FAN NOW",
              style: TextStyle(
                color: Color.fromARGB(255, 4, 23, 60),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 23, 60),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MatchDetailScreen()),
        );
      },
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Colors.yellow, width: 2.5),
          ),
          width: 310,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Cambodia Youth League U16",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w500,
                      fontSize: 12)),
              const SizedBox(height: 5),
              const Text("Kampot, Cambodia",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w400,
                      fontSize: 11)),
              const SizedBox(height: 5),
              const Text("16 Jun 2024, 8:00 AM",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w400,
                      fontSize: 11)),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.network(
                    "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    "Visakha FC",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )
                ],
              ),
              Row(
                children: [
                  Image.network(
                    "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333371.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    "Boeungket FC",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )
                ],
              )
            ],
          )),
    );
  }

  Widget _buildAllMatchCards() {
    return SizedBox(
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("MATCHES",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FixturesAndResultsScreen()),
                      );
                    },
                    child: const Row(
                      children: [
                        Text("View All",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Colors.yellow, size: 12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 12),
                  _buildCard(),
                  const SizedBox(width: 10),
                  _buildCard(),
                  const SizedBox(width: 10),
                  _buildCard(),
                  const SizedBox(width: 12),
                ],
              ),
            ),
          ],
        ));
  }

  Widget _buildOfferandPromotionCard() {
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
                        "https://tse4.mm.bing.net/th?id=OIP.WIPqO_wGESFP8K3VYd2HyQHaEK&pid=Api&P=0&h=220",
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
                        "https://tse4.mm.bing.net/th?id=OIP.WIPqO_wGESFP8K3VYd2HyQHaEK&pid=Api&P=0&h=220"),
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
              const Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 260,
                      child: Text(
                        "Visakha Football Club (Khmer: ក្លឹបបាល់ទាត់វិសាខា, Klœ̆b Băltoăt Vĭsakha) is an association football club based in Phnom Penh.",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Expire date: 16/06/2024",
                      style: TextStyle(color: Colors.yellow, fontSize: 10),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _buildOfferandPromotions() {
    return Container(
        margin: const EdgeInsets.only(top: 15),
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("OFFERS & PROMOTIONS",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OfferAndPromotionScreen()),
                      );
                    },
                    child: const Row(
                      children: [
                        Text("View All",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Colors.yellow, size: 12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 12),
                  _buildOfferandPromotionCard(),
                  const SizedBox(width: 10),
                  _buildOfferandPromotionCard(),
                  const SizedBox(width: 10),
                  _buildOfferandPromotionCard(),
                  const SizedBox(width: 12),
                ],
              ),
            ),
          ],
        ));
  }

  Widget _buildNewsCard() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 7, 34, 89),
            ),
          ]),
      child: Column(children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NewDetailScreen(
                        title: "Visakha Football Club wins 1st title",
                        description:
                            "Visakha Football Club (Khmer: ក្លឹបបាល់ទាត់វិសាខា, Klœ̆b Băltoăt Vĭsakha) is an association football club based in Phnom Penh.",
                        image:
                            "https://tse3.mm.bing.net/th?id=OIP.0O0mdeVrmt5Q0kwfl8foogHaEI&pid=Api&P=0&h=220",
                      )),
            );
          },
          child: Stack(children: [
            Container(
              height: 270,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://tse3.mm.bing.net/th?id=OIP.0O0mdeVrmt5Q0kwfl8foogHaEI&pid=Api&P=0&h=220"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 2,
                        color: Colors.yellow,
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(
                          width: 350,
                          child: Text(
                              "Visakha Football Club (Khmer: ក្លឹបបាល់ទាត់វិសាខា, Klœ̆b Băltoăt Vĭsakha) is an association football club based in Phnom Penh.",
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400))),
                    ]))
          ]),
        ),
        const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Row(children: [
                  Icon(Icons.favorite_border_outlined,
                      color: Colors.yellow, size: 16),
                  SizedBox(width: 5),
                  Text("0", style: TextStyle(color: Colors.yellow))
                ]),
              ),
              ElevatedButton(
                onPressed: null,
                child: Row(children: [
                  Icon(Icons.share, color: Colors.yellow, size: 16),
                  SizedBox(width: 5),
                  Text("Shares", style: TextStyle(color: Colors.yellow))
                ]),
              ),
            ])
      ]),
    );
  }

  Widget _buildNewsandEvent() {
    return Column(
      children: [
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("NEWS & EVENTS",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 14)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5, // Replace with your dynamic item count
            itemBuilder: (context, index) {
              return Column(
                children: [
                  _buildNewsCard(),
                  const SizedBox(height: 10),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
