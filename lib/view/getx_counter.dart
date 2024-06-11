import 'dart:ffi';

import '../utils/urls.dart';

class GetxCounter extends StatelessWidget {
  GetxCounter({super.key});
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Getx Counter")),
      body: Center(
        child: Obx(() {
          return Text(controller.counter.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade200,
        child: const Center(
          child: Text('Click Me'),
        ),
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}
