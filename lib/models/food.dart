part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});
}

List<Food> mockFood = [
  Food(
      id: 1,
      picturePath:
          'https://cdns.klimg.com/merdeka.com/i/w/news/2020/11/03/1238499/content_images/670x335/20201103203146-1-sensasi-makan-ala-sultan-kulineran-beda-negara-dalam-sekali-tunjuk-saja-001-zaki.jpg',
      name: 'Sate Sayur Sultan',
      description:
          'Sate Sayur Sultan adalah menu sate vegan paing terkenal di Bandung. Sate ini di buat dari berbagai bahan.',
      ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
      price: 150000,
      rate: 4.9),
  Food(
      id: 2,
      picturePath:
          'https://cdns.klimg.com/merdeka.com/i/w/news/2020/11/03/1238499/content_images/670x335/20201103203146-1-sensasi-makan-ala-sultan-kulineran-beda-negara-dalam-sekali-tunjuk-saja-001-zaki.jpg',
      name: 'Sate Sayur Sultan',
      description:
          'Sate Sayur Sultan adalah menu sate vegan paing terkenal di Bandung. Sate ini di buat dari berbagai bahan.',
      ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
      price: 150000,
      rate: 4.5),
  Food(
      id: 3,
      picturePath:
          'https://cdns.klimg.com/merdeka.com/i/w/news/2020/11/03/1238499/content_images/670x335/20201103203146-1-sensasi-makan-ala-sultan-kulineran-beda-negara-dalam-sekali-tunjuk-saja-001-zaki.jpg',
      name: 'Sate Sayur Sultan',
      description:
          'Sate Sayur Sultan adalah menu sate vegan paing terkenal di Bandung. Sate ini di buat dari berbagai bahan.',
      ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
      price: 150000,
      rate: 3.7)
];
