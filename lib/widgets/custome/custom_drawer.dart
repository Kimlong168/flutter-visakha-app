import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../screens/fixtures_and_results_screen.dart';
import '../../layouts/layout.dart';
import '../../state_logic/change_theme_logic.dart';

class CustomDrawer extends StatelessWidget implements PreferredSizeWidget {
  // final int themeIndex;
  // CustomDrawer(this.themeIndex);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    int themeIndex = context.watch<ChangeThemeLogic>().themeIndex;
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 15),
        color: themeIndex == 1
            ? const Color.fromARGB(255, 14, 46, 110)
            : Colors.black,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage(
        //         'https://cpl.sgp1.cdn.digitaloceanspaces.com/stadium/large/1705985693.png'), // Update with your image path
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://tse3.mm.bing.net/th?id=OIP.o_Mg-ObwGNHPKfmPk2be6QHaEK&pid=Api&P=0&h=220'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Lionel Messi',
                  style: TextStyle(
                      color: Color.fromARGB(255, 226, 168, 9),
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  '+855 86961256',
                  style: TextStyle(color: Color.fromARGB(255, 226, 168, 9)),
                )
              ],
            )),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FixturesAndResultsScreen()),
                );
              },
              child: const Text(
                "MATCH",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "PURCHASED HISTORY",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            const Text(
              "PURCHASED TICKETS",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            const Text(
              "PRIVACY & POLICY",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Layout(pageIndex: 4)),
                );
              },
              child: const Text(
                "ABOUT US",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "CONTACT US",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            const Text(
              "SETTINGS",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                if (themeIndex == 1) {
                  context.read<ChangeThemeLogic>().changeToDark();
                } else if (themeIndex == 2) {
                  context.read<ChangeThemeLogic>().changeToLight();
                } else {
                  context.read<ChangeThemeLogic>().changeToLight();
                }
              },
              child: Row(
                children: [
                  Text(
                    themeIndex == 1 ? "DARK MODE" : "LIGHT MODE",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 10),
                  themeIndex == 1
                      ? const Icon(
                          Icons.nightlight_round,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                        )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://up.yimg.com/ib/th?id=OIP.cOz92GK9w_2_VxUIWBL0ngHaHa&pid=Api&rs=1&c=1&qlt=95&w=124&h=124'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://s.yimg.com/fz/api/res/1.2/_5dmtTdXQzStB8e.53m2EQ--~C/YXBwaWQ9c3JjaGRkO2g9NzI7cT04MDt3PTcy/https://s.yimg.com/zb/imgv1/e9d6381f-6a16-39d9-b6f9-1467838c022c/t_500x300'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://tse3.mm.bing.net/th?id=OIP.vJ-C5oSgebxMUeieuY4xcgHaHa&pid=Api&P=0&h=220'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://tse4.mm.bing.net/th?id=OIP.K27Zig7nc-qgGAgSXxIzHQAAAA&pid=Api&P=0&h=220'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://tse1.mm.bing.net/th?id=OIP.oB6LxM8vycBZQmJioMmSMAHaEo&pid=Api&P=0&h=220'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Version: 1.2.7",
                style: TextStyle(
                    color: Color.fromARGB(148, 255, 255, 255), fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
