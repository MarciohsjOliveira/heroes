import 'package:flutter/material.dart';
import 'package:heroes/app/models/super_hero.dart';

class Connections extends StatelessWidget {
  final SuperHero superHeroItem;

  const Connections({Key key, @required this.superHeroItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            "Team Affiliation".toUpperCase(),
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            superHeroItem.connections.groupAffiliation,
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Relatives".toUpperCase(),
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: Text(
            superHeroItem.connections.relatives
                .toString()
                .replaceAll("[", "")
                .replaceAll("]", ""),
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
