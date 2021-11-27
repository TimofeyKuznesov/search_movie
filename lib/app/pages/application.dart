import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_movie/app/pages/index.dart';
import 'package:search_movie/app/services/localization/app.i18n.dart';
import 'package:search_movie/app/theme/branding_colors.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie search'.i18n),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Header'.i18n),
            ),
            ListTile(
              title: Text('menu1'.i18n),
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
