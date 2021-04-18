import '../view-models/signup_viewmodel.dart';
import '../repositories/account_repository.dart';
import '../models/user_model.dart';

class SignUpController {
  AccountRepository repository;

  SignUpController() {
    repository  = AccountRepository();
  }

  Future<UserModel> signUp(SignUpViewModel model) async {
    model.isSigningUp = true;
    var user = await repository.createAccount(model);
    model.isSigningUp = false;
    return user;
  }
}