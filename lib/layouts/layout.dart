import 'package:flutter/material.dart';
import '../widgets/custome/custom_appbar.dart';
import '../widgets/custome/custom_drawer.dart';
import '../screens/home_screen.dart';
import '../screens/card_screen.dart';
import '../screens/store_screen.dart';

class Layout extends StatefulWidget {
  int pageIndex = 0;

  Layout({Key? key, int? pageIndex}) : super(key: key) {
    if (pageIndex != null) {
      this.pageIndex = pageIndex;
    }
  }

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  late int _selectedIndex;
  // assign page index from parent class
  late int _pageIndex;
  @override
  void initState() {
    super.initState();
    _pageIndex = widget.pageIndex;
    _selectedIndex = _pageIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Center(
        child: _buildBody(),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
      floatingActionButton:
          _pageIndex == 3 ? const SizedBox() : _buildFloatingActionButton(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _pageIndex,
      children: [
        HomeScreen(),
        Container(color: Colors.orange),
        StoreScreen(),
        CardScreen(),
        Container(color: Colors.pink),
        Container(color: Colors.yellow),
      ],
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.grey,
      backgroundColor: const Color.fromARGB(255, 14, 46, 110),
      // showUnselectedLabels: false,
      showSelectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "HOME",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          label: "VIDEOS",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: "STORE",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label: "CARD",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: "ABOUT",
        ),
      ],
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        // Add your functionality here
      },
      backgroundColor: Colors.yellow,
      child: const Icon(Icons.chat),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageIndex = index;
    });
  }
}
