import 'package:heroes/app/models/super_hero.dart';
import 'package:heroes/app/repository/heroes_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final HeroesRepository heroesRepository;

  @action
  _HomeStore(this.heroesRepository) {
    heroesRepository.search().then((all) => listHeroes = all);
  }

  @observable
  List<SuperHero> listHeroes;
}
