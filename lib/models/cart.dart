import 'shoe.dart';

class Cart {
  List<Shoe> shoeShop = [
    Shoe(
      name: '1',
      price: '\$1',
      imagePath: 'images/1.png',
      description: 'Cool',
    ),
    Shoe(
      name: '2',
      price: '\$2',
      imagePath: 'images/2.png',
      description: 'Cool',
    ),
    Shoe(
      name: '3',
      price: '\$3',
      imagePath: 'images/3.png',
      description: 'Cool',
    ),
    Shoe(
      name: '4',
      price: '\$4',
      imagePath: 'images/4.png',
      description: 'Cool',
    ),
    Shoe(
      name: '5',
      price: '\$5',
      imagePath: 'images/5.png',
      description: 'Cool',
    ),
    Shoe(
      name: '6',
      price: '\$6',
      imagePath: 'images/6.png',
      description: 'Cool',
    ),
    Shoe(
      name: '7',
      price: '\$7',
      imagePath: 'images/8.png',
      description: 'Cool',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
