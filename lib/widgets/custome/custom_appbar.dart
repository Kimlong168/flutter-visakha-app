import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../screens/notification_screen.dart';
import '../../screens/cart_screen.dart';
import '../../state_logic/change_theme_logic.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    int themeIndex = context.watch<ChangeThemeLogic>().themeIndex;
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.yellow,
        ),
      ),
      centerTitle: true,
      title: Image.network(
          'https://cpl.sgp1.cdn.digitaloceanspaces.com/logo/club/extra_small/1691333383.png',
          height: 60,
          fit: BoxFit.cover),
      backgroundColor: themeIndex == 1
          ? const Color.fromARGB(255, 14, 46, 110)
          : Colors.black,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.yellow,
          ),
          onPressed: () {
            // Add your notification functionality here
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NotificationScreen()),
            );
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.yellow,
          ),
          onPressed: () {
            // Add your notification functionality here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CardScreen()),
            );
          },
        ),
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: themeIndex == 1
              ? const Color.fromARGB(255, 14, 46, 110)
              : Colors.black,
        ),
      ),
    );
  }
}
