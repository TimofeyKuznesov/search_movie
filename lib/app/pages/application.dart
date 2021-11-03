import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_movie/app/pages/index.dart';
import 'package:search_movie/app/theme/branding_colors.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moview search'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Header'),
            ),
            ListTile(
              title: const Text('menu1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: const MainPage(),
      //style
      backgroundColor: BrandingColors.gray,
    );
  }
}
