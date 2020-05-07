class ConsumableItem {
  String name;
  String type;
  int value;
  List<String> effects;

  ConsumableItem({this.name, this.type, this.value, this.effects});

  ConsumableItem.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    value = json['value'];
    effects = json['effects'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['value'] = this.value;
    data['effects'] = this.effects;
    return data;
  }
}