import 'package:flutter/material.dart';
import 'Question1.dart';

class myProvider with ChangeNotifier {
  Color book = const Color.fromRGBO(245, 245, 248, 1);
  bool isvisible = false;
  BoxDecoration box = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: const Color.fromRGBO(228, 117, 139, 1),
      ));
  void callButton() {
    isvisible = true;
    notifyListeners();
  }

  Icon thisIcon = const Icon(Icons.search);

  bool obstxt = true;
  void PassWord() {
    obstxt = !obstxt;
    notifyListeners();
  }

  iconType() {
    thisIcon == const Icon(Icons.search)
        ? const Icon(Icons.cancel)
        : const Icon(Icons.search);
    notifyListeners();
  }

  buttonChange() {
    box ==
            BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromRGBO(228, 117, 139, 1),
                ))
        ? box = BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(228, 117, 139, 1),
                  Color.fromRGBO(84, 96, 206, 1)
                ]))
        : box = BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromRGBO(228, 117, 139, 1),
            ),
          );
    notifyListeners();
  }

  booking() {
    book == const Color.fromRGBO(245, 245, 248, 1)
        ? book = Color.fromRGBO(84, 96, 206, 1)
        : book = const Color.fromRGBO(245, 245, 248, 1);
    notifyListeners();
  }
}
