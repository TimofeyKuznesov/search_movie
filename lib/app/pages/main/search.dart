import 'package:flutter/material.dart';
import 'package:search_movie/app/services/localization/app.i18n.dart';
import 'package:search_movie/app/theme/branding_colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandingColors.black,
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  'netflixroulette',
                  style: TextStyle(
                    color: BrandingColors.red,
                  ),
                ),
                const Spacer(),
                MaterialButton(
                  onPressed: () {},
                  color: BrandingColors.red,
                  textColor: BrandingColors.white,
                  child: Text('Search'.i18n),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'FIND MORE MOVIE'.i18n,
                style: const TextStyle(
                  color: BrandingColors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Search movies'.i18n,
                      style: const TextStyle(
                        color: BrandingColors.white,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: BrandingColors.red,
                    textColor: BrandingColors.white,
                    child: Text('Search'.i18n),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
