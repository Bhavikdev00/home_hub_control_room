import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  Map<String, dynamic> userData = {};
  bool isLoading = false;
  @override
  onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {
    isLoading = true;
    update();
    Stream<DocumentSnapshot> data = FirebaseFirestore.instance
        .collection("Admin")
        .doc("adminData")
        .snapshots();
    data.listen((event) {
      userData = {};
      userData = event.data() as Map<String, dynamic>;
      isLoading = false;
      update();
    });
  }
}
