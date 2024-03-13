import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth firebaseAuth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;

CollectionReference adminUsers = firestore.collection("adminUsers");
CollectionReference otpCollection = firestore.collection("otp");
CollectionReference serviceCollection = firestore.collection("servicesInfo");
CollectionReference serviceProviderRequestCollection =
    firestore.collection("service_provider_requests");
CollectionReference serviceProviders =
    firestore.collection("service_providers");
