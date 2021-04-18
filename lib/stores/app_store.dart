import 'package:mobx/mobx.dart';
part 'app_store.g.dart';

class AppStore = _AppStoreBase with _$AppStore;

abstract class _AppStoreBase with Store {
  @observable
  String name = "";
  
  @observable
  String email = "";

  @observable
  String picture = "https://placehold.it/200";

  @observable
  String token = "";

  @action
  void setUser(String pName, String pEmail, String pPicture, String pToken) {
    name = pName;
    email = pEmail;
    picture = pPicture;
    token = pToken;
  }
}