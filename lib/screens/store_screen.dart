import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [_buildPageView(), _buildTabs()],
      ),
    );
  }

  List<Widget> boxes = [
    Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC8ec8tpp94yWJL3qBWHkZumx0y2GD4WUYqw&s'),
        fit: BoxFit.cover,
      ),
    )),
    Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC8ec8tpp94yWJL3qBWHkZumx0y2GD4WUYqw&s'),
        fit: BoxFit.cover,
      ),
    )),
    Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp1xFSMg3nywvznCxsDd_J7Lm_TxnW0H4v0w&s'),
        fit: BoxFit.cover,
      ),
    )),
  ];

  Widget _buildPageView() {
    return Container(
      height: 200,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: boxes.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              boxes[index],
              Positioned(
                  right: 5,
                  top: 7,
                  child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '${index + 1} / ${boxes.length}',
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          );
        },
      ),
    );
  }

  Widget _buildTabs() {
    return Container(
      color: const Color.fromARGB(255, 14, 46, 110),
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            const TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              tabs: [
                Tab(
                  text: "ALL",
                ),
                Tab(
                  text: "ACCESSORIES",
                ),
                Tab(
                  text: "FORWARD SPORTWEAR",
                ),
                Tab(
                  text: "KIT",
                ),
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 169, 145, 101),
              indicatorColor: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 700,
              child: TabBarView(
                children: [
                  _buildAllTap(),
                  _buildAccessoriesTap(),
                  _buildForwardSportwearTap(),
                  _buildKitTap(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Container> boxes2 = [
    Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 5, 24, 62),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC8ec8tpp94yWJL3qBWHkZumx0y2GD4WUYqw&s'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: const Text(
                    'T-SHIRT',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: const Text(
                    'USD 180',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 5, 24, 62),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC8ec8tpp94yWJL3qBWHkZumx0y2GD4WUYqw&s'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: const Text(
                    'T-SHIRT',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: const Text(
                    'USD 180',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 5, 24, 62),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC8ec8tpp94yWJL3qBWHkZumx0y2GD4WUYqw&s'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: const Text(
                    'T-SHIRT',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: const Text(
                    'USD 180',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 5, 24, 62),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC8ec8tpp94yWJL3qBWHkZumx0y2GD4WUYqw&s'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'T-SHIRT',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.yellow),
                  ),
                  const Text(
                    'USD 180',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.yellow),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  ];

  Widget _buildGridViewExtent() {
    return GridView.extent(
      physics: const NeverScrollableScrollPhysics(),
      maxCrossAxisExtent: 200,
      padding: EdgeInsets.all(5),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 3 / 4,
      children: boxes2,
    );
  }

  Widget _buildAllTap() {
    return _buildGridViewExtent();
  }

  Widget _buildAccessoriesTap() {
    return _buildGridViewExtent();
  }

  Widget _buildForwardSportwearTap() {
    return _buildGridViewExtent();
  }

  Widget _buildKitTap() {
    return _buildGridViewExtent();
  }
}
