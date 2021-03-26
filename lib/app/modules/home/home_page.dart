import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:heroes/app/modules/home/home_store.dart';
import 'package:heroes/app/widgets/heroes_widget.dart';
import 'package:heroes/app/widgets/search.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore homeStore = Modular.get<HomeStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heroes"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: Search(homeStore.listHeroes),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Observer(
            builder: (context) {
              if (homeStore.listHeroes == null) {
                return Container(
                    margin: EdgeInsets.all(10),
                    child: CircularProgressIndicator());
              } else if (homeStore.listHeroes.isEmpty) {
                return Text("A API não retornou dados!");
              } else {
                return HeroesWidget(listHeroes: homeStore.listHeroes);
              }
            },
          ),
        ),
      ),
    );
  }
}
