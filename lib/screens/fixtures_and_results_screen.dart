import 'package:flutter/material.dart';
import 'match_detail_screen.dart';

class FixturesAndResultsScreen extends StatelessWidget {
  FixturesAndResultsScreen({super.key});

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
        'MATCH',
        style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
      ),
      flexibleSpace: Container(
        color: const Color.fromARGB(255, 14, 46, 110),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildTabs(),
      ],
    );
  }

  Widget _buildTabs() {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  text: "FIXTURES",
                ),
                Tab(
                  text: "RESULTS",
                ),
                Tab(
                  text: "LEAGUE TABLE",
                ),
              ],
              labelColor: Colors.yellow,
              unselectedLabelColor: Color.fromARGB(255, 169, 145, 101),
              indicatorColor: Colors.yellow,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildTabFixtures(),
                  _buildTabResults(),
                  _buildTabLeagueTable(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Object> matchData = [
    {
      "title": "Cambodian Primier League",
      "date": "June 2024",
      "fulldate": "16 June 2024,3:00 PM",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "image1":
          "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
      "image2":
          "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333371.png",
      "stadium": "RSN stadium",
      "score1": "2",
      "score2": "8",
    },
    {
      "title": "Cambodian Primier League",
      "date": "June 2024",
      "fulldate": "16 June 2024,3:00 PM",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "image1":
          "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
      "image2":
          "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333371.png",
      "stadium": "Prince stadium",
      "score1": "6",
      "score2": "4",
    },
    {
      "title": "Cambodian Primier League",
      "date": "June 2024",
      "fulldate": "16 June 2024,3:00 PM",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "image1":
          "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
      "image2":
          "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333371.png",
      "stadium": "SVR stadium",
      "score1": "3",
      "score2": "3",
    },
    {
      "title": "Cambodian Primier League",
      "date": "June 2024",
      "fulldate": "16 June 2024,3:00 PM",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "image1":
          "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
      "image2":
          "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333371.png",
      "stadium": "Tiffy Army stadium",
      "score1": "2",
      "score2": "6",
    },
    {
      "title": "Cambodian Primier League",
      "date": "July 2024",
      "fulldate": "16 June 2024,3:00 PM",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "image1":
          "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
      "image2":
          "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333371.png",
      "stadium": "RSN stadium",
      "score1": "2",
      "score2": "3",
    },
    {
      "title": "Cambodian Primier League",
      "date": "July 2024",
      "fulldate": "16 June 2024,3:00 PM",
      "team1": "Visakha FC",
      "team2": "Boeungket FC",
      "image1":
          "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
      "image2":
          "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333371.png",
      "stadium": "Olyampic stadium",
      "score1": "1",
      "score2": "0",
    },
  ];
  Widget _buildTabResults() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: matchData.length,
      itemBuilder: (context, index) {
        final match = matchData[index]
            as Map<String, String>; // Explicit cast for current match
        final bool isFirstMatch = index == 0;
        final bool isDifferentTitle = !isFirstMatch &&
            (matchData[index - 1] as Map<String, String>)["date"] !=
                match["date"];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isDifferentTitle || isFirstMatch)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  match["date"].toString(),
                  style: const TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MatchDetailScreen(),
                  ),
                );
              },
              child: _buildResultCard(
                title: match["title"].toString(),
                date: match["date"].toString(),
                fulldate: match["fulldate"].toString(),
                team1: match["team1"].toString(),
                team2: match["team2"].toString(),
                image1: match["image1"].toString(),
                image2: match["image2"].toString(),
                stadium: match["stadium"].toString(),
                score1: match["score1"].toString(),
                score2: match["score2"].toString(),
              ),
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }

  Widget _buildResultCard({
    required String title,
    required String date,
    required String fulldate,
    required String team1,
    required String team2,
    required String image1,
    required String image2,
    required String stadium,
    required String score1,
    required String score2,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "$stadium | $fulldate",
            style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          image1,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          team1,
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Image.network(
                          image2,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          team2,
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 2,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 80,
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              score1,
                              style: const TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              score2,
                              style: const TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ]),
                    )
                  ],
                )
              ]),
        ),
        const Divider(color: Colors.yellow, height: 10),
      ],
    );
  }

  Widget _buildTabFixtures() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: matchData.length,
      itemBuilder: (context, index) {
        final match = matchData[index]
            as Map<String, String>; // Explicit cast for current match
        final bool isFirstMatch = index == 0;
        final bool isDifferentTitle = !isFirstMatch &&
            (matchData[index - 1] as Map<String, String>)["date"] !=
                match["date"];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isDifferentTitle || isFirstMatch)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  match["date"].toString(),
                  style: const TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MatchDetailScreen(),
                  ),
                );
              },
              child: _buildFixtureCard(
                title: match["title"].toString(),
                date: match["date"].toString(),
                fulldate: match["fulldate"].toString(),
                team1: match["team1"].toString(),
                team2: match["team2"].toString(),
                image1: match["image1"].toString(),
                image2: match["image2"].toString(),
                stadium: match["stadium"].toString(),
                score1: match["score1"].toString(),
                score2: match["score2"].toString(),
              ),
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }

  Widget _buildFixtureCard({
    required String title,
    required String date,
    required String fulldate,
    required String team1,
    required String team2,
    required String image1,
    required String image2,
    required String stadium,
    required String score1,
    required String score2,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "$stadium | $fulldate",
            style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          image1,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          team1,
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Image.network(
                          image2,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          team2,
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 2,
                      color: Colors.yellow,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        "17 Jun",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                )
              ]),
        ),
        const Divider(color: Colors.yellow, height: 10),
      ],
    );
  }

  final List<FootballTeam> teams = [
    FootballTeam(
        name: 'P.K.R Svay Rieng FC',
        logoPath:
            "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333344.png",
        matchesPlayed: 25,
        goalDifference: 40,
        points: 65),
    FootballTeam(
        name: 'Phnom Penh Crown',
        logoPath:
            "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333361.png",
        matchesPlayed: 25,
        goalDifference: 29,
        points: 58),
    FootballTeam(
        name: 'Visakha FC',
        logoPath:
            "https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png",
        matchesPlayed: 25,
        goalDifference: 9,
        points: 38),
    FootballTeam(
        name: 'Boeungket FC',
        logoPath:
            "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333371.png",
        matchesPlayed: 25,
        goalDifference: 13,
        points: 37),
    FootballTeam(
        name: 'ISI Dangkor Senchey FC',
        logoPath:
            "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333323.png",
        matchesPlayed: 25,
        goalDifference: -10,
        points: 34),
    FootballTeam(
        name: 'Tiffy Army FC',
        logoPath:
            "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333352.png",
        matchesPlayed: 25,
        goalDifference: 4,
        points: 33),
    FootballTeam(
        name: 'Naga World',
        logoPath:
            "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333286.png",
        matchesPlayed: 25,
        goalDifference: -12,
        points: 27),
    FootballTeam(
        name: 'Prey Veng FC',
        logoPath:
            "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333309.png",
        matchesPlayed: 25,
        goalDifference: -13,
        points: 23),
    FootballTeam(
        name: 'Kirivong Sok Sen Chey FC',
        logoPath:
            "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333394.png",
        matchesPlayed: 25,
        goalDifference: -22,
        points: 20),
    FootballTeam(
        name: 'Angkor Tiger FC',
        logoPath:
            "https://cpl.sgp1.digitaloceanspaces.com/logo/club/extra_small/1691333334.png",
        matchesPlayed: 25,
        goalDifference: -38,
        points: 18),
  ];

  Widget _buildTabLeagueTable() {
    return ListView(
      children: [
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const {
            0: FixedColumnWidth(40.0), // for position
            1: FixedColumnWidth(50.0), // for position
            2: FlexColumnWidth(), // for team name
            3: FixedColumnWidth(50.0), // for matches played
            4: FixedColumnWidth(50.0), // for goal difference
            5: FixedColumnWidth(50.0), // for points
          },
          children: [
            TableRow(
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(161, 243, 241, 241), width: 0.5),
                  )),
              children: [
                _buildTableCell('Pos', isHeader: true),
                _buildTableCell('', isHeader: true),
                _buildTableCell('Team', isHeader: true),
                _buildTableCell('MP', isHeader: true),
                _buildTableCell('GD', isHeader: true),
                _buildTableCell('PTS', isHeader: true),
              ],
            ),
            for (int i = 0; i < teams.length; i++)
              TableRow(
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.grey),
                )),
                children: [
                  Center(child: _buildTableCell('${i + 1}')),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        teams[i].logoPath,
                        width: 35,
                        height: 35,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  _buildTableCell(teams[i].name),
                  _buildTableCell('${teams[i].matchesPlayed}'),
                  _buildTableCell('${teams[i].goalDifference}'),
                  _buildTableCell('${teams[i].points}'),
                ],
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildTableCell(String text, {bool isHeader = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: isHeader ? 12.0 : 10.0,
          color: isHeader ? Colors.black : Colors.white,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

class FootballTeam {
  final String name;
  final String logoPath;
  final int matchesPlayed;
  final int goalDifference;
  final int points;

  FootballTeam({
    required this.name,
    required this.logoPath,
    required this.matchesPlayed,
    required this.goalDifference,
    required this.points,
  });
}
