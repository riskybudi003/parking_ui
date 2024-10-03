class Park {
  final String title;
  final String image;
  final String distance;
  final String price;
  final ParkType? type;
  final String? typeText;
  final double? ratingStar;
  final double? ratingCount;

  Park(
      {required this.title,
      required this.image,
      required this.distance,
      required this.price,
      this.type,
      this.typeText,
      this.ratingCount,
      this.ratingStar});
}

enum ParkType { discount, popular }

var parks = [
  Park(
    title: 'Buds Park',
    image: 'assets/images/park_1.png',
    distance: '1.3 Km',
    price: '\$5/hr',
    type: ParkType.discount,
    typeText: 'Off 50%',
  ),
  Park(
    title: 'Mas Mart',
    image: 'assets/images/park_2.png',
    distance: '1.9 Km',
    price: '\$5/hr',
    type: ParkType.popular,
    typeText: 'Popular',
  ),
  Park(
    title: 'Senayan Park',
    image: 'assets/images/park_3.png',
    distance: '2 Km',
    price: '\$5/hr',
    type: ParkType.popular,
    typeText: 'Popular',
  ),
];

var freshLot = [
  Park(
    title: 'Senayan City',
    image: 'assets/images/senayan.png',
    distance: '5.3Km',
    price: '\$1/hr',
    ratingStar: 4,
    ratingCount: 14598,
  ),
  Park(
    title: 'Kota Baru',
    image: 'assets/images/kota_baru.png',
    distance: '5.3Km',
    price: '\$1/hr',
    ratingStar: 4,
    ratingCount: 14598,
  ),
  Park(
    title: 'Senayan City',
    image: 'assets/images/senayan.png',
    distance: '5.3Km',
    price: '\$1/hr',
    ratingStar: 4,
    ratingCount: 14598,
  ),
  Park(
    title: 'Kota Baru',
    image: 'assets/images/kota_baru.png',
    distance: '5.3Km',
    price: '\$1/hr',
    ratingStar: 4,
    ratingCount: 14598,
  ),
];
