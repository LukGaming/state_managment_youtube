import 'package:state_managment_youtube/listenable.dart';

class Counter extends MyChangeNotifier {
  int count = 0;

  void incrementCounter() {
    count++;
    notifyListeners();
  }
}
