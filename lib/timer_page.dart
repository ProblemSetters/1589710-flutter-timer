import 'package:flutter/material.dart';
import 'package:hello_flutter/timer_controller.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  final TimerController timerController = TimerController();

  @override
  void initState() {
    timerController.addListener(_listenTimer);
    super.initState();
  }

  @override
  void dispose() {
    timerController.removeListener(_listenTimer);
    timerController.dispose();
    super.dispose();
  }

  _listenTimer() {
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.green,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 80,
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  'Timer App',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  timerController.currentTimeInSeconds.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 48),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: timerController.isActive
                      ? null
                      : timerController.initTimer,
                  child: const Text('Start Counter'),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
