import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Guest User"),
            accountEmail: Text("guest@example.com"),
            currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("Favorites"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'favorite');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("Friends"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'friends');
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Notifications"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'notif');
            },
          ),
        ],
      ),
    );
  }
}
