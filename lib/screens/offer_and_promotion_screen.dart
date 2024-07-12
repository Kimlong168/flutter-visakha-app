import 'package:flutter/material.dart';
import 'news_detail_screen.dart';
import 'package:provider/provider.dart';
import '../state_logic/change_theme_logic.dart';

class OfferAndPromotionScreen extends StatelessWidget {
  const OfferAndPromotionScreen({super.key});

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

  AppBar _buildAppbar(context, themeIndex) {
    return AppBar(
      backgroundColor: themeIndex == 1
          ? const Color.fromARGB(255, 14, 46, 110)
          : Colors.black,
      elevation: 0,
      title: const Text('OFFER & PROMOTION',
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold)),
      centerTitle: true,
      leading: IconButton(
        icon:
            const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.yellow),
        onPressed: () => Navigator.pop(context),
      ),
      flexibleSpace: Container(
        color: themeIndex == 1
            ? const Color.fromARGB(255, 14, 46, 110)
            : Colors.black,
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: ListView.builder(
          itemCount: 5,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
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
                    child: _buildOfferandPromotionCard()),
                const SizedBox(height: 10)
              ],
            );
          }),
    );
  }

  Widget _buildOfferandPromotionCard() {
    return SizedBox(
        height: 230,
        child: Stack(
          children: [
            Container(
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
        ));
  }
}
