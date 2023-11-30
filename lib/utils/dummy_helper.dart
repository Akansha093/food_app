import '../app/data/models/product_model.dart';
import 'constants.dart';

class DummyHelper {
  const DummyHelper._();

  static List<ProductModel> products = [
    ProductModel(
      id: 1,
      image: Constants.product1,
      name: 'Chicken Burger',
      quantity: 0,
      price: 25.99,
      rating: 4.5,
      reviews: 'Our mouthwatering burger.',
      isFavorite: false,
    ),
    ProductModel(
        id: 2,
        image: Constants.product2,
        name: 'Veg Burger',
        quantity: 0,
        price: 799,
        rating: 4.4,
        reviews: 'Bite into bliss ',
        isFavorite: false),
    ProductModel(
        id: 3,
        image: Constants.product3,
        name: 'Roasted Chicken Burger',
        quantity: 0,
        price: 129,
        rating: 4.3,
        reviews: 'Bite-sized joy',
        isFavorite: false),
    ProductModel(
        id: 4,
        image: Constants.product4,
        name: 'Roasted Paneeer Burger',
        quantity: 0,
        price: 590,
        rating: 4.2,
        reviews: 'Burst of deliciousness',
        isFavorite: false),
    ProductModel(
        id: 5,
        image: Constants.product5,
        name: 'Roasted Potato Burger',
        quantity: 0,
        price: 300,
        rating: 4.1,
        reviews: 'To send somebody',
        isFavorite: false),
    ProductModel(
        id: 6,
        image: Constants.product1,
        name: 'Burger',
        quantity: 0,
        price: 500,
        rating: 4.0,
        reviews: 'Delicious Veg Burger',
        isFavorite: false),
  ];
}
