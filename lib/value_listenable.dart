import 'package:state_managment_youtube/listenable.dart';

abstract class MyValueListenable<T> extends MyChangeNotifier{
  T get value;
}


class MyValueNotifier<T> extends MyChangeNotifier implements MyValueListenable<T>{

   T _value;

  MyValueNotifier(this._value);

  @override
  T get value => _value;

  set value(T newValue){
    print("Valor antigo: $_value");
    print("Valor novo: $newValue");
    if(_value == newValue) return;
    _value = newValue;
    notifyListeners();
  }
  
}

