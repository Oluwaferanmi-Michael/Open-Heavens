import 'dart:convert';


class Distributors {
  String? distributorName;
  String? location;
  String? phoneNumber;

  Distributors({
    required this.distributorName,
    required this.location,
    required this.phoneNumber
  });


// factory Distributors.fromJson(Map<String, dynamic>, data) {
//   final distributorName = data[distributorName];
//   final location = data[location];
//   final phoneNumber = data[phoneNumber];
// }

}