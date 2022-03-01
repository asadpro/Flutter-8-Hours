class CatalogModel {
  static final items = [
    Item(
        id: 1,
        color: '#33505a',
        desc: 'Apple iphone 12 Generation',
        price: 999,
        image: 'assets/iphone.jpg',
        name: 'Iphone 11'),
    Item(
        id: 2,
        color: '#34505a',
        desc: 'Apple iphone 13 Generation',
        price: 119,
        image: 'assets/iphone10.jpg',
        name: 'Iphone 12'),
    Item(
        id: 1,
        color: '#33505a',
        desc: 'Apple iphone 12 Generation',
        price: 999,
        image: 'assets/iphone8.jpg',
        name: 'Iphone 11'),
    Item(
        id: 2,
        color: '#34505a',
        desc: 'Apple iphone 13 Generation',
        price: 101,
        image: 'assets/iphone6.jpg',
        name: 'Iphone 12'),
    Item(
        id: 1,
        color: '#33505a',
        desc: 'Apple iphone 12 Generation',
        price: 999,
        image: 'assets/iphone.jpg',
        name: 'Iphone 11'),
    Item(
        id: 2,
        color: '#34505a',
        desc: 'Apple iphone 13 Generation',
        price: 119,
        image: 'assets/iphone10.jpg',
        name: 'Iphone 12'),
    Item(
        id: 1,
        color: '#33505a',
        desc: 'Apple iphone 12 Generation',
        price: 999,
        image: 'assets/iphone8.jpg',
        name: 'Iphone 11'),
    Item(
        id: 2,
        color: '#34505a',
        desc: 'Apple iphone 13 Generation',
        price: 101,
        image: 'assets/iphone6.jpg',
        name: 'Iphone 12'),
  ];
}

class Item {
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({this.id, this.color, this.desc, this.price, this.image, this.name});
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }
  toMap() => {
        'id': id,
        'name': name,
        'desc': desc,
        'price': price,
        'color': color,
        'image': image,
      };
}
