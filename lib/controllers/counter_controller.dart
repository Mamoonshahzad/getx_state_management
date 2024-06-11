import 'package:get/get.dart';

import '../utils/urls.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  incrementCounter() {
    counter.value++;
  }
}
