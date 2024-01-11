import 'package:flutter/material.dart';
import 'package:smartirrigation/pages/dashboard.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/logo.png'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard'),
            onTap: () => Dashboard(),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('History Data'),
            onTap: () => Dashboard(),
          ),
          ListTile(
            leading: Icon(Icons.access_time_filled),
            title: Text('History Siram'),
            onTap: () => Dashboard(),
          ),
        ],
      ),
    );
  }
}
