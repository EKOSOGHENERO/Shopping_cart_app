import 'package:flutter/material.dart';

// this is our app product model , it includes all product images and colors details
class Product {
  final int id;
  final String title;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.title,
    required this.price,
  });
}

List<Product> furProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/phone1.jpg",
      "assets/images/phone2.webp",
      "assets/images/phone4.webp",
    ],
    colors: [
      Colors.black,
      Colors.black54,
      Colors.lightBlue,
    ],
    title: "Smart Phone",
    price: 120,
    rating: 4.8,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/plasma.jpg",
      "assets/images/plasma1.webp",
      "assets/images/plasma2.jpg",
    ],
    colors: [
      Colors.black,
      Colors.white,
      Colors.brown,
    ],
    title: "Hisense Smart Tv",
    price: 250,
    rating: 4.8,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/fridge.webp",
      "assets/images/fridge1.jpg",
      "assets/images/fridge2.webp",
    ],
    colors: [
      Colors.transparent,
      Colors.white,
      Colors.black12,
    ],
    title: "LG Standing Fridge",
    price: 180,
    rating: 4.8,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/laptop.jpg",
      "assets/images/laptop1.jpg",
      "assets/images/laptop.bmp",
    ],
    colors: [Colors.black, Colors.white, Colors.black12],
    title: "HP Laptop",
    price: 200,
    rating: 4.1,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/hometheater2.webp",
    ],
    colors: [Colors.black],
    title: "LG Hometheater",
    price: 150,
    rating: 4.4,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/desktop.bmp",
    ],
    colors: [
      Colors.white,
    ],
    title: "Dell Desktop Computer",
    price: 100,
    rating: 4.2,
  ),
];
