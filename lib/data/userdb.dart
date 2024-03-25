import 'package:flutter_finalproject/data/usermodel.dart';

class UserDB {
  final List<UserModel> modelDB = [
    UserModel(
      username: "PatcharaPN",
      userPicture:
          'https://cdn.discordapp.com/attachments/1067793699284713552/1221313239233724556/IMG_5904.jpg?ex=66121f97&is=65ffaa97&hm=9efda2b5447bba67e219d52b8853dee6b26e6a18e2322ae42f56e4fce3e733ad&',
    )
  ];

  List<UserModel> getAllModels() {
    return modelDB;
  }
}
