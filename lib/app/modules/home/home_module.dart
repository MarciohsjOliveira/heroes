import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:heroes/app/modules/home/home_page.dart';
import 'package:heroes/app/repository/heroes_repository.dart';
import 'package:heroes/app/utils/constants.dart';
import 'package:heroes/app/widgets/heroes_widget.dart';

import '../home/home_store.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeStore(i.get<HeroesRepository>())),
        Bind((i) => HeroesRepository(Dio())),
        Bind((i) => Dio(BaseOptions(baseUrl: urlAPI))),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => HomePage(),
    ),
    ChildRoute(
      '/d',
      child: (_, args) => HeroesWidget(
        listHeroes: [],
      ),
    ),
  ];
}
