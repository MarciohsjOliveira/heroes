import 'package:flutter/material.dart';
import 'package:heroes/app/models/super_hero.dart';

class Work extends StatelessWidget {
  final SuperHero superHeroItem;

  const Work({Key key, @required this.superHeroItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Base".toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .caption
            .copyWith(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        superHeroItem.work.base,
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
    );
  }
}
