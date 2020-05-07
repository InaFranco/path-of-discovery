import 'package:path_to_discovery/model/item.dart';
import 'package:path_to_discovery/model/consumableItem.dart';

class Player {
  String race;
  String job;
  int level;
  int life;
  int maxLife;
  int mana;
  int maxMana;
  int attack;
  int defense;
  int speed;
  List<String> skills;
  List<Item> equipaments;
  List<ConsumableItem> consumables;

  Player({
    this.race,
    this.job,
    this.level,
    this.life,
    this.maxLife,
    this.mana,
    this.maxMana,
    this.attack,
    this.defense,
    this.speed,
    this.skills,
    this.equipaments,
    this.consumables
  });

  Player.fromJson(Map<String, dynamic> json) {
    race = json['race'];
    job = json['job'];
    level = json['level'];
    life = json['life'];
    maxLife = json['maxLife'];
    mana = json['mana'];
    maxMana = json['maxMana'];
    attack = json['attack'];
    defense = json['defense'];
    speed = json['speed'];
    skills = json['skills'].cast<String>();
    if (json['equipaments'] != null) {
      equipaments = new List<Item>();
      json['equipaments'].forEach((v) {
        equipaments.add(
          new Item.fromJson(v)
        );
      });
    }
    if (json['consumables'] != null) {
      consumables = new List<ConsumableItem>();
      json['consumables'].forEach((v) {
        consumables.add(
          new ConsumableItem.fromJson(v)
        );
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['race'] = this.race;
    data['job'] = this.job;
    data['level'] = this.level;
    data['life'] = this.life;
    data['maxLife'] = this.maxLife;
    data['mana'] = this.mana;
    data['maxMana'] = this.maxMana;
    data['attack'] = this.attack;
    data['defense'] = this.defense;
    data['speed'] = this.speed;
    data['skills'] = this.skills;
    if (this.equipaments != null) {
      data['equipaments'] = this.equipaments.map((v) => v.toJson()).toList();
    }
    if (this.consumables != null) {
      data['consumables'] = this.consumables.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
