# Flutter Profile Edit

## Environment

- Flutter Version: 3.10.6

## Application Demo:

![](https://hrcdn.net/s3_pub/istreet-assets/6SjTTo1yoL227IfOvm3BOA/flutter-timer_AdobeExpress.gif)

## Functionality Requirements

Create a timer app, as shown above. Application requirements are given below, and the finished application must pass all of the unit tests.

Task 1 is to complete the implementation of `lib/timer_page.dart` according to the following requirements:

- The app consists of one view:
  - In the view
    - display the Initial value of the timer
    - display the Start button
  - Clicking on the start button, the timer should start decreasing.
    - the timer should only stop at 0.

Task 2 is to complete the implementation of `lib/timer_controller.dart` according to the following requirements:

- Fill in the \_timer code to periodically decrease the value by 1 in every 1 second and stop at 0

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
