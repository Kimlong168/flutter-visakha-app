import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state_logic/change_theme_logic.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int themeIndex = context.watch<ChangeThemeLogic>().themeIndex;
    return Scaffold(
      backgroundColor: themeIndex == 1
          ? const Color.fromARGB(255, 14, 46, 110)
          : Colors.black,
      appBar: _buildAppbar(context,themeIndex),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.production_quantity_limits_outlined,
                color: Colors.white,
                size: 100,
              ),
              Text(
                'No Items Added',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 50),
            ],
          ),
        ));
  }

  AppBar _buildAppbar(context, themeIndex) {
 
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.yellow,
      ),
      title: const Text('Cart',
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold)),
      centerTitle: true,
      flexibleSpace: Container(
        color: themeIndex == 1
            ? const Color.fromARGB(255, 14, 46, 110)
            : Colors.black,
      ),
    );
  }
}
