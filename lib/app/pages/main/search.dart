import 'package:flutter/material.dart';
import 'package:search_movie/app/theme/branding_colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'FIND MORE MOVIE',
              style: TextStyle(
                color: BrandingColors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Search movies',
                  style: TextStyle(
                    color: BrandingColors.white,
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text('Search'),
                  color: BrandingColors.red,
                  textColor: BrandingColors.white,
                ),
              ],
            )
          ],
        ),
        color: BrandingColors.black,
        margin: const EdgeInsets.only(bottom: 20),
      ),
      flex: 0,
    );
  }
}
