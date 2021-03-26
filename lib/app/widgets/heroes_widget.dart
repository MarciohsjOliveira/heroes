import "package:flutter/material.dart";
import 'package:heroes/app/models/super_hero.dart';
import 'package:heroes/app/modules/heroesdescriptions/heroes_description.dart';

class HeroesWidget extends StatelessWidget {
  final List<SuperHero> listHeroes;

  const HeroesWidget({Key key, @required this.listHeroes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: listHeroes.map(
        (value) {
          return Container(
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroesDescription(value),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        value.name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
