class Item {
  String name;
  String type;
  int value;
  bool equipped;
  int attack;
  int defense;
  int speed;
  List<String> skills;

  Item({
    this.name,
    this.type,
    this.value,
    this.equipped,
    this.skills,
    this.attack,
    this.defense,
    this.speed
  });

  Item.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    value = json['value'];
    equipped = json['equipped'];
    attack = json['attack'];
    defense = json['defense'];
    speed = json['speed'];
    skills = json['skills'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['value'] = this.value;
    data['equipped'] = this.equipped;
    data['attack'] = this.attack;
    data['defense'] = this.defense;
    data['speed'] = this.speed;
    data['skills'] = this.skills;
    return data;
  }
}
