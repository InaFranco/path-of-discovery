class Item {
  String title;
  bool done;

  Item({this.title, this.done});

  Item.fromJSON(Map<String, dynamic> json) {
    this.title = json['title'];
    this.done = json['done'];
  }

  Map<String, dynamic> toJSON() {
    final Map<String, dynamic> output = new Map<String, dynamic>();
    output['title'] =  this.title;
    output['done'] =  this.done;
    return output;
  }
}

