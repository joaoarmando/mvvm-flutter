import '../view-models/signup_viewmodel.dart';
import '../repositories/account_repository.dart';
import '../models/user_model.dart';

class SignUpController {
  AccountRepository repository;

  SignUpController() {
    repository  = AccountRepository();
  }

  Future<UserModel> signUp(SignUpViewModel model) async {
    var user = await repository.createAccount(model);
    return user;
  }
}