import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 46, 110),
      appBar: _buildAppbar(context),
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

  AppBar _buildAppbar(context) {
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
        color: const Color.fromARGB(255, 14, 46, 110),
      ),
    );
  }
}
