import 'package:flutter/material.dart';
import 'package:heroes/app/models/super_hero.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PowerStats extends StatelessWidget {
  final SuperHero superHeroItem;

  const PowerStats({Key key, @required this.superHeroItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            "Intelligence".toUpperCase() +
                " - ${superHeroItem.powerstats.intelligence}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: superHeroItem.powerstats.intelligence.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.blue,
          ),
        ),
        ListTile(
          title: Text(
            "Strength".toUpperCase() +
                " - ${superHeroItem.powerstats.strength}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: superHeroItem.powerstats.strength.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.orange,
          ),
        ),
        ListTile(
          title: Text(
            "Speed".toUpperCase() + " - ${superHeroItem.powerstats.speed}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: superHeroItem.powerstats.speed.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.green,
          ),
        ),
        ListTile(
          title: Text(
            "Durability".toUpperCase() +
                " - ${superHeroItem.powerstats.durability}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: superHeroItem.powerstats.durability.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.orangeAccent,
          ),
        ),
        ListTile(
          title: Text(
            "Power".toUpperCase() + " - ${superHeroItem.powerstats.power}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: superHeroItem.powerstats.power.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.red,
          ),
        ),
        ListTile(
          title: Text(
            "Combat".toUpperCase() + " - ${superHeroItem.powerstats.combat}%",
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: LinearPercentIndicator(
            animation: true,
            lineHeight: 15.0,
            animationDuration: 5000,
            percent: superHeroItem.powerstats.combat.toDouble() / 100.0,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
