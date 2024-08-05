import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String uname;
  int counter = 0;

  void updateTitle() {
    counter++;
    notifyListeners();
  }

  HomeViewModel({required this.uname});
}
