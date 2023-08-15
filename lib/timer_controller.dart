import 'dart:async';

import 'package:flutter/material.dart';

class TimerController extends ChangeNotifier {
  Timer? _timer;

  late int _initialTimeInSeconds;
  late int currentTimeInSeconds;

  bool get isActive => _timer?.isActive ?? false;

  TimerController({int initialTimeInSeconds = 10}) {
    _initialTimeInSeconds = initialTimeInSeconds;
    currentTimeInSeconds = _initialTimeInSeconds;
  }

  @override
  dispose() {
    _timer?.cancel();
    super.dispose();
  }

  initTimer() {
    currentTimeInSeconds = _initialTimeInSeconds;
    notifyListeners();

    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        //add your code
      },
    );
  }
}
