class Comidas {
  List<Comida> items = new List();

  Comidas();

  Comidas.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final comida = new Comida.formJsonMap(item);
      items.add(comida);
    }
  }
}

class Comida {
  int metid;
  DateTime dateStart;
  DateTime dateEnd;
  int type;
  String name;
  String description;
  String imageUrl;
  int rating;

  Comida({
    this.metid,
    this.dateStart,
    this.dateEnd,
    this.type,
    this.name,
    this.description,
    this.imageUrl,
    this.rating,
  });

  Comida.formJsonMap(Map<String, dynamic> json) {
    metid = json['metid'];
    dateStart = json['dateStart'];
    dateEnd = json['dateEnd'];
    type = json['type'];
    name = json['name'];
    description = json['description'];
    imageUrl = json['imageUrl'];
    rating = json['rating'];
  }

  // getPostImg() {
  //   if (postPath == null) {

  //   }
  // }
}
