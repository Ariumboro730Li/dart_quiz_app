import 'package:flutter/material.dart';
// import 'package:quiz_app/dice_roller.dart';
import 'package:quiz_app/start_screen.dart';


// The start and end of the gradient are specified as Alignment objects.
// The variables are mutable so that they can be changed at runtime.
// For example, the gradient can be made to flow from the bottom right
// to the top left by setting 'startAlignment' to Alignment.bottomRight
// and 'endAlignment' to Alignment.topLeft.
// !! var startAlignment = Alignment.topLeft;
// !! var endAlignment = Alignment.bottomCenter;

// 'const' is used here to make it clear that the values of
// 'startAlignment' and 'endAlignment' are not intended to be changed.
// Using 'const' here has the added benefit of being able to detect if
// the values of 'startAlignment' and 'endAlignment' are accidentally
// changed, since Dart will throw a compile-time error if a 'const'
// variable is reassigned.
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomCenter;

// This is the main application widget.
class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  // GradientContainer({key}): super(key: key);
  const GradientContainer({
    super.key,
    required this.colors,
  });

  const GradientContainer.reyelgre({super.key})
    : colors = const [
        Color.fromARGB(255, 54, 244, 238),
        Color.fromARGB(255, 255, 59, 163),
        Color.fromARGB(255, 86, 159, 89),
      ];

  @override
  /// Builds a Container widget with a gradient background
  /// that transitions from red, to yellow, to green.
  ///
  /// The gradient begins at the top right of the container
  /// and ends at the bottom left.
  ///
  /// The Container also has a child Text widget that is
  /// centered in the Container and displays the text
  /// "Hello World from Flutter yeah yeahh" in black
  /// 40-point font with a font family of "Times New Roman".
  Widget build(context) {
    // !! Debugging
    // startAlignment = Alignment.topRight;
    // debugPrint(startAlignment.toString());
    // throw Exception('dd() called - stopping execution');

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: StartScreen(),
      ),
    );
  }
}
