import 'package:flutter/material.dart';
import 'package:search_movie/app/theme/index.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: Image.asset('graphics/BitmapBohemian.png')),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: const Text(
                            'Bohemian Rhapsody',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const Text('2003'),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.more_vert),
                    backgroundColor: BrandingColors.black,
                  ),
                ),
              ),
            ],
          ),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.all(3),
        ),
        color: BrandingColors.black,
      ),
    );
  }
}
