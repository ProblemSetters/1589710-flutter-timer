# Flutter Profile Edit

## Environment

- Flutter Version: 3.10.6

## Application Demo:

![](https://camo.githubusercontent.com/227cc79a6575a12361346c04a977641c3ba2320bf7a4d77aba4610c07204e263/68747470733a2f2f687263646e2e6e65742f73335f7075622f697374726565742d6173736574732f3946714c6856777542485043477a44465961675255412f656469742d70726f66696c652e676966)

## Functionality Requirements

Create a timer app, as shown above. Application requirements are given below, and the finished application must pass all of the unit tests.

Your task is to complete the implementation of `lib/timer_page.dart` according to the following requirements:

- The app consists of one view:
  - In the view
    - display the Initial value of the timer
    - display the Start button
  - Clicking on the start button, the timer should start decreasing.
    - the timer should only stop at 0.

Initially, the file is filled with boilerplate code.

## Testing Requirements

- The `Initial Value of Timer` must be `10`.
- The `Value of Timer` must use `Text` Widget.
- The `start` button widget must use `ElevatedButton` Widget.
- The `start` button must be named `Start Counter`.

Please note that the widgets use the above classes for test cases for rendering purposes. It is advised not to change them.

## Project Specifications

**Read Only Files**

- `test/widget_test.dart`
- `lib/main.dart`

**Commands**

```bash
flutter run --no-sound-null-safety
```

- install:

```bash
flutter pub  get
```

- test:

```bash
flutter test --no-sound-null-safety test/widget_test.dart
```
