import 'city.dart';
import 'phone.dart';

class Address {
  String road;
  int number;
  int cep;
  City city;
  Phone phone;
  Address({
    required this.road,
    required this.number,
    required this.cep,
    required this.city,
    required this.phone,
  });
}
