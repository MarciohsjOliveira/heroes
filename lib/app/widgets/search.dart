import 'package:flutter/material.dart';
import 'package:heroes/app/models/super_hero.dart';
import 'package:heroes/app/modules/heroesdescriptions/heroes_description.dart';

class Search extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  String selectedResult = '';

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text(selectedResult),
      ),
    );
  }

  final List<SuperHero> listHeroesName;
  Search(this.listHeroesName);

  List<SuperHero> recentList = [];

  @override
  Widget buildSuggestions(BuildContext context) {
    List<SuperHero> suggestionList = [];

    query.isEmpty
        ? suggestionList = recentList //In the true case
        : suggestionList.addAll(
            listHeroesName.where(
              // In the false case
              (element) => element.name.contains(query),
            ),
          );

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Column(
            children: [
              Card(
                child: Image.network(
                  suggestionList[index].images.md,
                  height: 200,
                  width: 200,
                ),
              ),
              Text(suggestionList[index].name),
            ],
          ),
          //Text(suggestionList[index].name,),
          leading: query.isEmpty ? Icon(Icons.access_time) : SizedBox(),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HeroesDescription(suggestionList[index]),
              ),
            );
          },
        );
      },
    );
  }
}
