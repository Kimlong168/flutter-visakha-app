import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state_logic/change_theme_logic.dart';

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
        children: [
          _buildPageView(),
          _buildTabs(),
        ],
      ),
    );
  }

  List<Widget> boxes = [
    Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://tse3.mm.bing.net/th?id=OIP.cnR2OvPTcmK3Gx-CzJB-0gHaDx&pid=Api&P=0&h=220'),
        fit: BoxFit.cover,
      ),
    )),
    Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://tse3.mm.bing.net/th?id=OIP.9rXIgvxITZ121p6-pr8vDQHaE8&pid=Api&P=0&h=220'),
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
  ];

  Widget _buildPageView() {
    int themeIndex = context.watch<ChangeThemeLogic>().themeIndex;
    return Container(
      color: themeIndex == 1
          ? const Color.fromARGB(255, 14, 46, 110)
          : Colors.black,
      height: 200,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
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
                        style: const TextStyle(color: Colors.white),
                      )))
            ],
          );
        },
      ),
    );
  }

  Widget _buildTabs() {
    int themeIndex = context.watch<ChangeThemeLogic>().themeIndex;
    return Container(
      color: themeIndex == 1
          ? const Color.fromARGB(255, 14, 46, 110)
          : Colors.black,
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
              unselectedLabelColor: Colors.yellow,
              indicatorColor: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: themeIndex == 1
                  ? const Color.fromARGB(255, 14, 46, 110)
                  : Colors.black,
              height: 900,
              child: TabBarView(
                children: [
                  _buildAllTab(),
                  _buildAccessoriesTap(),
                  _buildForwardSportwearTap(),
                  _buildKitTap(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGridViewExtent() {
    List products = [
      {
        'name': 'Home Jersey',
        'price': 90,
        'image':
            'https://tse3.mm.bing.net/th?id=OIP.hf4EVwYuZhc-XkL1DYPcigHaHa&pid=Api&P=0&h=220'
      },
      {
        'name': 'Away Jersey',
        'price': 90,
        'image':
            'https://tse3.mm.bing.net/th?id=OIP.fpPKtbxa1kd0p-0wlQVD2wHaHa&pid=Api&P=0&h=220'
      },
      {
        'name': 'T-SHIRT',
        'price': 180,
        'image':
            'https://tse3.mm.bing.net/th?id=OIP.wqMU1w06vtJC6j1RJQPC9wAAAA&pid=Api&P=0&h=220'
      },
      {
        'name': 'Training Shirt',
        'price': 50,
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC8ec8tpp94yWJL3qBWHkZumx0y2GD4WUYqw&s'
      },
      {
        'name': 'Travel Shirt',
        'price': 10,
        'image':
            'https://tse1.mm.bing.net/th?id=OIP.njKaObvMKZhJZzXIL7N1-wHaHa&pid=Api&P=0&h=220'
      },
      {
        'name': 'Goldkeeper Shirt',
        'price': 60,
        'image':
            'https://tse1.mm.bing.net/th?id=OIP.FVmacJmEPJZdDX3-MRUi_QHaHa&pid=Api&P=0&h=220'
      }
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 3 / 4,
      ),
      itemBuilder: (context, index) {
        return _buildProductCard(products[index]['name'],
            products[index]['price'], products[index]['image']);
      },
      physics: const NeverScrollableScrollPhysics(),
    );
  }

  Widget _buildProductCard(name, price, image) {
    int themeIndex = context.watch<ChangeThemeLogic>().themeIndex;
    return Container(
      decoration: BoxDecoration(
        color: themeIndex == 1
            ? const Color.fromARGB(255, 14, 46, 110)
            : const Color.fromARGB(255, 20, 20, 20),
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
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.start,
                        style: const TextStyle(color: Colors.yellow),
                      ),
                      Text(
                        'USD $price',
                        textAlign: TextAlign.start,
                        style: const TextStyle(color: Colors.yellow),
                      ),
                    ],
                  ),
                  const Icon(Icons.favorite_border,
                      color: Colors.yellow, size: 20)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAllTab() {
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
