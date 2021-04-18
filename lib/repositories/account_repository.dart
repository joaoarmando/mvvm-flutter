import 'package:mvvmproject/view-models/signup_viewmodel.dart';

import '../models/user_model.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignUpViewModel model) async{
    return UserModel(
      id:"1",
      name:"João Armando",
      email: "joaoaarmando@hotmail.com",
      picture: "https://picsum.photos/200/200",
      role: "Student",
      token: "xpto"
    );
  }
}