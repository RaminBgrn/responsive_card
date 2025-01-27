import 'package:get/get.dart';
import 'package:responsive_card/constants/routes_name.dart';
import 'package:responsive_card/features/home/view/home_screen.dart';

class MainPageRoutes {
  static List<GetPage> getRoutes() {
    return [
      GetPage(
        name: RouteName.home,
        page: () => HomeScreen(),
      ),
    ];
  }
}
