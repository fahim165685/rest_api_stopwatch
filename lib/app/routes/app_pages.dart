import 'package:get/get.dart';

import '../modules/albums/bindings/albums_binding.dart';
import '../modules/albums/views/albums_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.ALBUMS;

  static final routes = [
    GetPage(
      name: _Paths.ALBUMS,
      page: () => const AlbumsView(),
      binding: AlbumsBinding(),
    ),
  ];
}
