import 'package:flutter_finalproject/data/usermodel.dart';

class UserDB {
  final List<UserModel> modelDB = [
    UserModel(
      username: "Ra1ny",
      userPicture:
          'https://play-lh.googleusercontent.com/3ZKfMRp_QrdN-LzsZTbXdXBH-LS1iykSg9ikNq_8T2ppc92ltNbFxS-tORxw2-6kGA',
    )
  ];

  List<UserModel> getAllModels() {
    return modelDB;
  }
}
