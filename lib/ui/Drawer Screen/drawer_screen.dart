import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:home_hub_control_room/constant/app_color.dart';
import 'package:home_hub_control_room/ui/Drawer%20Screen/drawer_screen_controller.dart';
import 'package:home_hub_control_room/ui/Service%20Provider%20Menagement/service_provider_menagement_screen.dart';
import 'package:home_hub_control_room/ui/Services%20Screen/services_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  DrawerScreenController drawerScreenController =
      Get.find<DrawerScreenController>();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [semiLightPurple, lightPurple],
          ),
        ),
      ),
      controller: drawerScreenController.advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    // color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/app_logo.png',
                  ),
                ),
                ListTile(
                  onTap: () {
                    drawerScreenController.setScreenNo(0);
                    drawerScreenController.advancedDrawerController
                        .hideDrawer();
                  },
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                ),
                ListTile(
                  onTap: () {
                    drawerScreenController.setScreenNo(1);
                    drawerScreenController.advancedDrawerController
                        .hideDrawer();
                  },
                  leading: const Icon(Icons.miscellaneous_services_outlined),
                  title: const Text('Services'),
                ),
                ListTile(
                  onTap: () {
                    drawerScreenController.setScreenNo(2);
                    drawerScreenController.advancedDrawerController
                        .hideDrawer();
                  },
                  leading: Image.asset(
                    "assets/images/discount.png",
                    color: Colors.white,
                    width: 20,
                  ),
                  title: const Text('Offers'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: const Text('Tranzaction'),
                ),
                const Spacer(),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: const Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      child: GetBuilder<DrawerScreenController>(
        builder: (controller) {
          return controller.widgets[controller.screenNo];
        },
      ),
      // child: Scaffold(
      //   // appBar: AppBar(
      //   //   title: const Text('Advanced Drawer Example'),
      //   //   leading: IconButton(
      //   //     onPressed: _handleMenuButtonPressed,
      //   //     icon: ValueListenableBuilder<AdvancedDrawerValue>(
      //   //       valueListenable: _advancedDrawerController,
      //   //       builder: (_, value, __) {
      //   //         return AnimatedSwitcher(
      //   //           duration: const Duration(milliseconds: 250),
      //   //           child: Icon(
      //   //             value.visible ? Icons.clear : Icons.menu,
      //   //             key: ValueKey<bool>(value.visible),
      //   //           ),
      //   //         );
      //   //       },
      //   //     ),
      //   //   ),
      //   // ),
      //   body: ServiceProviderMenagementScreen(),
      // ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    drawerScreenController.advancedDrawerController.showDrawer();
  }
}
