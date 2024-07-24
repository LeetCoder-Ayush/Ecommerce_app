import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/data/repositories/user/user_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw e.message ?? 'Firebase exception occurred';
    } on FormatException {
      throw 'Invalid Format';
    } on PlatformException catch (e) {
      throw e.message ?? 'Platform exception occurred';
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }
}