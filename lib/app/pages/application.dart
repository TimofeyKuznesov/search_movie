import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_movie/app/core/widgets/dialog/exit_app.dart';
import 'package:search_movie/app/pages/index.dart';
import 'package:search_movie/app/services/localization/app.i18n.dart';
import 'package:search_movie/app/theme/branding_colors.dart';
import 'package:search_movie/app_route.dart';

class Application extends StatelessWidget {
  late final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exitApp(context),
      child: Scaffold(
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
                  _navigatorKey.currentState?.pushNamed(AppRoute.search);
                },
              ),
              ListTile(
                title: Text('map'.i18n),
                onTap: () {
                  Navigator.pop(context);
                  _navigatorKey.currentState?.pushNamed(AppRoute.map);
                },
              ),
              ListTile(
                title: Text('web-view'.i18n),
                onTap: () {
                  Navigator.pop(context);
                  _navigatorKey.currentState?.pushNamed(AppRoute.webView);
                },
              ),
            ],
          ),
        ),
        body: Navigator(
          key: _navigatorKey,
          initialRoute: AppRoute.home,
          onGenerateRoute: (settings) {
            if (settings.name == AppRoute.search) {
              return MaterialPageRoute(builder: (context) => MainPage());
            }
            if (settings.name == AppRoute.map) {
              return MaterialPageRoute(
                builder: (context) => MapViewContainer(),
              );
            }
            if (settings.name == AppRoute.webView) {
              return MaterialPageRoute(
                builder: (context) => const WebViewPage(
                    'https://www.epam-group.ru/about/who-we-are/epam-russia/nizhny-novgorod'),
              );
            }

            return MaterialPageRoute(builder: (context) => MainPage());
          },
        ),
        backgroundColor: BrandingColors.gray,
      ),
    );
  }
}
