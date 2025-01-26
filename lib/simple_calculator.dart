import 'package:calculator/utilis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calculator_controller.dart';

class SimpleCalculator extends StatelessWidget {
   SimpleCalculator({super.key});
  final CalculatorController controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Obx(() => Align(
              alignment: Alignment.bottomRight,
              child: Text(
                controller.previewsexpression.value,
                style: TextStyle(color: Colors.white, fontSize: 36),
                textAlign: TextAlign.right,
              ),
            )),
            // const SizedBox(height: 10),
            Obx(() => Align(
              alignment: Alignment.bottomRight,
              child: Text(
                controller.expression.value,
                style: TextStyle(color: Colors.white, fontSize: 56),
                textAlign: TextAlign.right,
              ),
            )),
            const SizedBox(height: 10),
            const Divider(color: Colors.white10),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Column(
                 children: [
                   Row(
                     children: [
                       Column(
                         children: [
                           customfloatingbutton(
                             text: "C",
                             textcolor: Colors.black,
                             backgroundcolor: Colors.grey,
                             callback: controller.clearExpression,
                           ),
                           const SizedBox(height: 10),
                           customfloatingbutton(
                             text: "7",
                             backgroundcolor: Colors.grey.shade800,
                             callback: () => controller.addToExpression("7"),
                           ),
                           const SizedBox(height: 10),
                           customfloatingbutton(
                             text: "4",
                             backgroundcolor: Colors.grey.shade800,
                             callback: () => controller.addToExpression("4"),
                           ),
                           const SizedBox(height: 10),
                           customfloatingbutton(
                             text: "1",
                             backgroundcolor: Colors.grey.shade800,
                             callback: () => controller.addToExpression("1"),
                           ),
                         ],
                       ),
                       SizedBox(width: 20,),
                       Column(
                         children: [
                           customfloatingbutton(
                             text: "DEL",
                             textcolor: Colors.black,
                             backgroundcolor: Colors.grey,
                             callback: controller.deleteLast,
                           ),
                           const SizedBox(height: 10),
                           customfloatingbutton(
                             text: "8",
                             backgroundcolor: Colors.grey.shade800,
                             callback: () => controller.addToExpression("8"),
                           ),
                           const SizedBox(height: 10),
                           customfloatingbutton(
                             text: "5",
                             backgroundcolor: Colors.grey.shade800,
                             callback: () => controller.addToExpression("5"),
                           ),
                           const SizedBox(height: 10),
                           customfloatingbutton(
                             text: "2",
                             backgroundcolor: Colors.grey.shade800,
                             callback: () => controller.addToExpression("2"),
                           ),
                         ],
                       ),
                     ],
                   ),
                   SizedBox(height: 10,),
                   GestureDetector(
                       onTap: () {
                         controller.addToExpression("0");
                       },
                       child: Container(
                         padding: EdgeInsets.all(20),
                         height: Get.width * 0.19,
                         width: Get.width * 0.43,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           color: blackbuttoncolor,
                           boxShadow: [BoxShadow(color: blackbuttoncolor)],
                         ),
                         child: Align(
                           alignment: Alignment.centerLeft,
                           child: Text(
                             "0",
                             style:
                             TextStyle(fontSize: 25, color: Colors.white),
                           ),
                         ),
                       )),
                 ],
               ),
                Column(
                  children: [
                    customfloatingbutton(
                      text: "%",
                      backgroundcolor: Colors.grey.shade800,
                      callback: () => controller.addToExpression("%"),
                    ),
                    const SizedBox(height: 10),
                    customfloatingbutton(
                      text: "9",
                      backgroundcolor: Colors.grey.shade800,
                      callback: () => controller.addToExpression("9"),
                    ),
                    const SizedBox(height: 10),
                    customfloatingbutton(
                      text: "6",
                      backgroundcolor: Colors.grey.shade800,
                      callback: () => controller.addToExpression("6"),
                    ),
                    const SizedBox(height: 10),
                    customfloatingbutton(
                      text: "3",
                      backgroundcolor: Colors.grey.shade800,
                      callback: () => controller.addToExpression("3"),
                    ), const SizedBox(height: 10),
                    customfloatingbutton(
                      text: ".",
                      backgroundcolor: Colors.grey.shade800,
                      callback: () => controller.addToExpression("."),
                    ),
                  ],
                ),
                Column(
                  children: [
                    customfloatingbutton(
                      icon: Icon(CupertinoIcons.divide),
                      text: "/",
                      backgroundcolor: Colors.orange,
                      callback: () => controller.addToExpression("/"),
                    ),
                    const SizedBox(height: 10),
                    customfloatingbutton(
                      text: "*",
                      backgroundcolor: Colors.orange,
                      callback: () => controller.addToExpression("*"),
                    ),
                    const SizedBox(height: 10),
                    customfloatingbutton(
                      text: "-",
                      backgroundcolor: Colors.orange,
                      callback: () => controller.addToExpression("-"),
                    ),
                    const SizedBox(height: 10),
                    customfloatingbutton(
                      text: "+",
                      backgroundcolor: Colors.orange,
                      callback: () => controller.addToExpression("+"),
                    ),
                    const SizedBox(height: 10),
                    customfloatingbutton(
                      text: "=",
                      backgroundcolor: Colors.orange,
                      callback: controller.calculate,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
