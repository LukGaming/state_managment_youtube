typedef VoidCallback = void Function();

abstract class MyListenable {
  void addListener(VoidCallback callback);
  void removeListener(VoidCallback callback);
}

class MyChangeNotifier implements MyListenable {
  final List<VoidCallback> callbacks = [];

  @override
  void addListener(VoidCallback callback) {
    if (!callbacks.contains(callback)) callbacks.add(callback);
  }

  @override
  void removeListener(VoidCallback callback) {
    if (callbacks.contains(callback)) callbacks.remove(callback);
  }

  void notifyListeners() {
    for (var callback in callbacks) {
      callback.call();
    }
  }
}
