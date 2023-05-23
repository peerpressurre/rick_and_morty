// class Character {
//   late String name;
//   late String status;
//   late String gender;
//   late String location;
//   late String image;

//   Character(
//       {required name,
//       required status,
//       required gender,
//       required location,
//       required image});

//   factory Character.fromJson(Map<String, dynamic> json) {
//     return Character(
//       name: json['name'],
//       status: json['status'],
//       gender: json['gender'],
//       location: json['location']['name'],
//       image: json['image'] as String,
//     );
//   }
// }

class Character {
  final String name;
  final String status;
  final String gender;
  final String location;
  final String image;

  Character({
    required this.name,
    required this.status,
    required this.gender,
    required this.location,
    required this.image,
  });
}
