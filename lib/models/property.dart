class Property {
  bool active;
  List<String> images;
  String sId;
  String title;
  String description;
  int price;
  String type;
  bool forSale;
  bool forRent;
  String address;
  int qtdRooms;
  int qtdBathrooms;
  int qtdGarage;
  bool haveSuit;
  double frontDimensions;
  double sideDimensions;
  double totalArea;
  int iV;

  Property(
      {this.active,
      this.images,
      this.sId,
      this.title,
      this.description,
      this.price,
      this.type,
      this.forSale,
      this.forRent,
      this.address,
      this.qtdRooms,
      this.qtdBathrooms,
      this.qtdGarage,
      this.haveSuit,
      this.frontDimensions,
      this.sideDimensions,
      this.totalArea,
      this.iV});

  Property.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    images = json['images'].cast<String>();
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    type = json['type'];
    forSale = json['forSale'];
    forRent = json['forRent'];
    address = json['address'];
    qtdRooms = json['qtdRooms'];
    qtdBathrooms = json['qtdBathrooms'];
    qtdGarage = json['qtdGarage'];
    haveSuit = json['haveSuit'];
    frontDimensions = json['frontDimensions'];
    sideDimensions = json['sideDimensions'];
    totalArea = json['totalArea'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['active'] = this.active;
    data['images'] = this.images;
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['type'] = this.type;
    data['forSale'] = this.forSale;
    data['forRent'] = this.forRent;
    data['address'] = this.address;
    data['qtdRooms'] = this.qtdRooms;
    data['qtdBathrooms'] = this.qtdBathrooms;
    data['qtdGarage'] = this.qtdGarage;
    data['haveSuit'] = this.haveSuit;
    data['frontDimensions'] = this.frontDimensions;
    data['sideDimensions'] = this.sideDimensions;
    data['totalArea'] = this.totalArea;
    data['__v'] = this.iV;
    return data;
  }
}
