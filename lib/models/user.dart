part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Lisa',
    address: 'Street Gangnam',
    city: 'Gangnam',
    houseNumber: '26',
    phoneNumber: '08123456789',
    email: 'lisa@blackpink.com',
    picturePath:
        'http://risetcdn.jatimtimes.com/images/2018/12/22/Jarang-Diketahui-Ini-Sepuluh-Fakta-tentang-Lisa-Blackpink150660d3a8418aa2.jpg');
