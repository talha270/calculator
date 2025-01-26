import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var expression = "".obs; // Observable for the current expression
  var previewsexpression = "".obs; // Observable for the current expression

  void addToExpression(String value) {
    expression.value += value; // Add value to the expression
    print(expression.value);
  }

  void clearExpression() {
    expression.value = ''; // Clear the expression
    previewsexpression.value = ''; // Clear the expression
  }

  void deleteLast() {
    if (expression.isNotEmpty) {
      expression.value = expression.substring(0, expression.value.length - 1); // Remove last character
    }
  }

  void calculate() {
    try {
      final parser = Parser();
      final exp = parser.parse(expression.value);
      final result = exp.evaluate(EvaluationType.REAL, ContextModel());
      previewsexpression.value=expression.value;
      expression.value = result.toString();// Update with result
    } catch (e) {
      expression.value = 'Error'; // Display error if invalid
    }
  }
}
