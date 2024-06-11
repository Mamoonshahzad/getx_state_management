import '../utils/urls.dart';

class ExampleTwoScreen extends StatelessWidget {
  ExampleTwoScreen({super.key});
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Example 2')),
      body: Center(
        child: Column(children: [
          Obx(() {
            return Container(
              width: 100,
              height: 100,
              color: Colors.red.withOpacity(exampleTwoController.opacity.value),
            );
          }),
          Obx(() {
            return Slider(
                value: exampleTwoController.opacity.value,
                onChanged: (value) {
                  exampleTwoController.setOpacity(value);
                });
          })
        ]),
      ),
    );
  }
}
