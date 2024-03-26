import 'package:flutter_finalproject/data/usermodel.dart';

class UserDB {
  final List<UserModel> modelDB = [
    UserModel(
      username: "PatcharaPN",
      userPicture:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_CCRvW0Z7s0SH-1TFYoKxDg5P6A34J6XsyqUJEk4XYQ&s',
    )
  ];

  List<UserModel> getAllModels() {
    return modelDB;
  }
}
