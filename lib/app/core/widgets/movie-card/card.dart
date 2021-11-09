import 'package:flutter/material.dart';
import 'package:search_movie/app/services/movies/models/top_250_data_detail.dart';
import 'package:search_movie/app/theme/index.dart';

class MovieCard extends StatelessWidget {
  final Top250DataDetail card;

  const MovieCard(this.card, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: BrandingColors.black,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.all(3),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: Image.network(card.image ?? '')),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Text(card.title ?? '',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: BrandingColors.white,
                              )),
                        ),
                      ),
                      Text(
                        card.year ?? '',
                        style: const TextStyle(
                          color: BrandingColors.white,
                        ),
                      ),
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
                    backgroundColor: BrandingColors.black,
                    child: Icon(Icons.more_vert),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
