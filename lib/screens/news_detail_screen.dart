import 'package:flutter/material.dart';

class NewDetailScreen extends StatelessWidget {
  String title = 'title';
  String description = 'description';
  String image = 'image';

  // const NewDetailScreen({super.key});

  NewDetailScreen(
      {required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 46, 110),
      appBar: _buildAppbar(context),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(physics: const BouncingScrollPhysics(), children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(image,
              fit: BoxFit.cover, height: 200, width: double.infinity),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    ]);
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
      actions: [
        IconButton(
          icon: const Icon(Icons.share),
          onPressed: () {},
          color: Colors.yellow,
        ),
      ],
      title: Text(title,
          style: const TextStyle(
              color: Colors.yellow, fontWeight: FontWeight.bold)),
      flexibleSpace: Container(
        color: const Color.fromARGB(255, 14, 46, 110),
      ),
    );
  }
}
