import 'package:flutter/material.dart';
import 'package:date_count_down/date_count_down.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({super.key});

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 46, 110),
      appBar: _buildAppbar(context),
      body: _buildBody(),
    );
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon:
            const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.yellow),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: const Text(
        'Visakha FC vs Boeungket FC',
        style: TextStyle(
            color: Colors.yellow, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      backgroundColor: const Color.fromARGB(255, 14, 46, 110),
      flexibleSpace: Container(
        color: const Color.fromARGB(255, 14, 46, 110),
      ),
    );
  }

  Widget _buildBody() {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            _buildCountdown(),
            _buildMatchCard(),
            _buildTabs(),
          ],
        ),
      ],
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
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 15),
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
                            color: Colors.yellow, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Sun, 16 July 2024",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Visakha Training Center",
                        style: TextStyle(color: Colors.yellow, fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "KICK IFF 8:00 AM",
                        style: TextStyle(color: Colors.yellow, fontSize: 12),
                      ),
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(
                text: "INFO",
                icon: Icon(Icons.info_outline_rounded),
              ),
              Tab(
                text: "LINEUP",
                icon: Icon(Icons.sports_soccer_rounded),
              ),
              Tab(
                text: "H2H",
                icon: Icon(Icons.compare_rounded),
              ),
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Color.fromARGB(255, 169, 145, 101),
            indicatorColor: Colors.yellow,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 570,
            child: TabBarView(
              children: [
                _buildTapInfo(),
                _buildTapLineup(),
                _buildTapH2H(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTapInfo() {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text("MATCH INFO",
            style:
                TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 300,
          child: Text(
              "The match will be played at Visakha Training Center on Sunday, 16 July 2024 at 8:00 AM",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.yellow)),
        ),
      ],
    );
  }

  Widget _buildTapLineup() {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Icon(
          Icons.info_outline_rounded,
          color: Colors.yellow,
          size: 35,
        ),
        SizedBox(
          height: 10,
        ),
        Text("AWAITING LINEUPS & FORMATIONS",
            style:
                TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 300,
          child: Text("Please check back later for the lineups and formations",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.yellow)),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.info_outline_rounded,
              color: Colors.yellow,
              size: 14,
            ),
            SizedBox(width: 5),
            Text("Learn more about lineups",
                style: TextStyle(color: Colors.yellow, fontSize: 12)),
          ],
        )
      ],
    );
  }

  List<Object> h2hData = [
    {
      "title": "Cambodian Primier League",
      "date": "25-16-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "4",
    },
    {
      "title": "Cambodian Primier League",
      "date": "25-16-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "4",
    },
    {
      "title": "Cambodian Primier League",
      "date": "25-16-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "4",
    },
    {
      "title": "Cambodian Primier League",
      "date": "25-16-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "4",
    },
    {
      "title": "Hunsen Cup",
      "date": "12-06-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "4",
    },
    {
      "title": "Super Cup",
      "date": "25-02-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "0",
    },
    {
      "title": "Super Cup",
      "date": "25-02-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "0",
    },
    {
      "title": "Super Cup",
      "date": "25-02-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "0",
    },
    {
      "title": "Super Cup",
      "date": "25-02-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "0",
    },
    {
      "title": "Super Cup",
      "date": "25-02-2024",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "score1": "2",
      "score2": "0",
    },
  ];

  Widget _buildTapH2H() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              physics: const BouncingScrollPhysics(),
              itemCount: h2hData.length,
              itemBuilder: (context, index) {
                final match = h2hData[index]
                    as Map<String, String>; // Explicit cast for current match
                final bool isFirstMatch = index == 0;
                final bool isDifferentTitle = !isFirstMatch &&
                    (h2hData[index - 1] as Map<String, String>)["title"] !=
                        match["title"];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isFirstMatch || isDifferentTitle
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(match["title"].toString(),
                                style: const TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold)),
                          )
                        : const SizedBox(),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("25-02-2024",
                              style: TextStyle(
                                  color: Colors.yellow, fontSize: 12)),
                          Column(
                            children: [
                              Text("Visakha FC",
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 12)),
                              Text("Boeungket FC",
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 12)),
                            ],
                          ),
                          Column(
                            children: [
                              Text("2",
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 12)),
                              Text("1",
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.yellow,
                      thickness: 0.7,
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
