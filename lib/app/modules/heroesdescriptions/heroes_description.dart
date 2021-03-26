import 'package:flutter/material.dart';
import 'package:heroes/app/models/itens/appearance.dart';
import 'package:heroes/app/models/itens/biography.dart';
import 'package:heroes/app/models/itens/connections.dart';
import 'package:heroes/app/models/itens/power_stats.dart';
import 'package:heroes/app/models/itens/work.dart';

// ignore: must_be_immutable
class HeroesDescription extends StatefulWidget {
  var data;

  HeroesDescription(this.data);

  @override
  _HeroesDescriptionState createState() => _HeroesDescriptionState();
}

class _HeroesDescriptionState extends State<HeroesDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heroes Description"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                widget.data.images.md.toString(),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(widget.data.name.toString(),
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              information("Id", widget.data.id.toString()),
              information("Name", widget.data.name.toString()),
              PowerStats(superHeroItem: widget.data),
              Appearance(superHeroItem: widget.data),
              Biography(superHeroItem: widget.data),
              Connections(superHeroItem: widget.data),
              Work(superHeroItem: widget.data),
            ],
          ),
        ),
      ),
    );
  }

  Widget information(String title, String content) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title + ": ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(content),
        ],
      ),
    );
  }
}
