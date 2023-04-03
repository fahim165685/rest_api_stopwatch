import 'package:get/get.dart';

import '../controllers/albums_controller.dart';

class AlbumsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlbumsController>(
      () => AlbumsController(),
    );
  }
}
