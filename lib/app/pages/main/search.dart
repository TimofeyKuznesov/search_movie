import 'package:flutter/material.dart';
import 'package:search_movie/app/theme/branding_colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
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
                  child: const Text('Search'),
                  color: BrandingColors.red,
                  textColor: BrandingColors.white,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'FIND MORE MOVIE',
                style: TextStyle(
                  color: BrandingColors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Search movies',
                      style: TextStyle(
                        color: BrandingColors.white,
                      ),
                    ),
                    flex: 1,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const Text('Search'),
                    color: BrandingColors.red,
                    textColor: BrandingColors.white,
                  ),
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      color: BrandingColors.black,
      margin: const EdgeInsets.only(bottom: 20),
    );
  }
}
