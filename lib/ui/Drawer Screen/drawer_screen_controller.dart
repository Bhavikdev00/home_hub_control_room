import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:home_hub_control_room/ui/Service%20Provider%20Menagement/service_provider_menagement_screen.dart';
import 'package:home_hub_control_room/ui/Services%20Screen/services_screen.dart';

class DrawerScreenController extends GetxController {
  final advancedDrawerController = AdvancedDrawerController();
  int screenNo = 0;
  List widgets = [
    const ServiceProviderMenagementScreen(),
    ServicesScreen(),
  ];

  void setScreenNo(int value) {
    screenNo = value;
    update();
  }
}
