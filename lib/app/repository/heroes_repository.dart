import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:heroes/app/models/super_hero.dart';

class HeroesRepository extends Disposable {
  final Dio _all;

  HeroesRepository(this._all);

  // ignore: missing_return
  Future<List<SuperHero>> search() async {
    try {
      final response =
          await _all.get('https://akabab.github.io/superhero-api/api/all.json');
      return (response.data as List)
          .map(
            (item) => SuperHero.fromJson(item),
          )
          .toList();
    } catch (ex) {}
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
