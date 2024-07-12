import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state_logic/change_theme_logic.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int themeIndex = context.watch<ChangeThemeLogic>().themeIndex;
    return Scaffold(
      backgroundColor: themeIndex == 1
          ? const Color.fromARGB(255, 14, 46, 110)
          : Colors.black,
      appBar: _buildAppbar(context, themeIndex),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          children: [
            const SizedBox(height: 8),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color.fromARGB(55, 116, 116, 116),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://tse1.mm.bing.net/th?id=OIP.QIgR78QH2oGjoSsMm3LP7gHaEW&pid=Api&P=0&h=220'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const SizedBox(
                    height: 70,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 250,
                          child: Text(
                              'Visakha Football Club (Khmer: ក្លឹបបាល់ទាត់វិសាខា, Klœ̆b Băltoăt Vĭsakha) is an association football club based in Phnom Penh.',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.yellow)),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Color.fromARGB(255, 249, 200, 21),
                              size: 12,
                            ),
                            SizedBox(width: 5),
                            Text('Match 16 Jun 2024, 8:00 AM',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 249, 200, 21))),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
            const SizedBox(height: 8),
            const Divider(),
          ],
        ),
      ),
    );
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
      title: const Text('NIOTIFICATIONS',
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
