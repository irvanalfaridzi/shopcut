part of 'models.dart';

enum Categories {
  restaurants,
  supermarket,
  babyKids,
  electronics,
  books,
  other
}

class Locations {
  final int id;
  final String nameLocations;
  final String urlGambarLocations;
  final double rate;
  final Categories categories;
  final String note;
  final double distance;
  final int closedTime;
  final bool promo;
  final bool closed;

  Locations(
    this.id,
    this.nameLocations,
    this.urlGambarLocations,
    this.rate,
    this.categories,
    this.note,
    this.distance,
    this.closedTime,
    this.promo,
    this.closed,
  );
}

List<Locations> mockLocations = [
  Locations(
    1,
    'Mbak Yayuk - Grand Mall',
    'assets/images/elec-produk-1.png',
    4.8,
    Categories.electronics,
    'Laptop, Electronic Products',
    0.2,
    8,
    true,
    false,
  ),
  Locations(
    2,
    'Gramedia - Solo Square',
    'assets/images/elec-produk-2.png',
    4.8,
    Categories.electronics,
    'Gym, Electronics',
    1.0,
    8,
    false,
    false,
  ),
  Locations(
    3,
    'iBox - The Park',
    'assets/images/elec-produk-3.png',
    4.8,
    Categories.electronics,
    'Iphone, iMac, Macbook',
    1.8,
    8,
    false,
    true,
  ),
  Locations(
    4,
    'Candi Elektronik - Grand Mall',
    'assets/images/elec-produk-4.png',
    4.8,
    Categories.electronics,
    'Smart TV, Air Conditioner',
    0.8,
    8,
    true,
    false,
  ),
  Locations(
    5,
    'Mi Store - Solo Paragon',
    'assets/images/elec-produk-5.png',
    4.8,
    Categories.electronics,
    'MI Products',
    1.8,
    8,
    false,
    false,
  ),
  Locations(
    6,
    'Ace Hardware - Solo Paragon',
    'assets/images/elec-produk-6.png',
    4.8,
    Categories.electronics,
    'Home Leaving, Electrnoics',
    1.8,
    8,
    false,
    false,
  )
];
