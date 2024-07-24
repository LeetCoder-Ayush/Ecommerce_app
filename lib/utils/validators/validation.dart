import 'package:get_storage/get_storage.dart';

class TValidator {

  static String? validateEmptyText(String? fieldName, String? value){
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }
    return null;
  }
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    
    //Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    // Check for minimum password length
    if (value.length < 10) {
      return 'Password must be at least 10 characters long';
    }

    //Check for Uppercase letters
    if (!value.contains(RegExp(r"[A-Z]"))){
      return 'Password must contain at least one Uppercase Letter.';
    }

    //Check for numbers
    if (!value.contains(RegExp(r"[0-9]"))){
      return 'Password must contain at least one Number.';
    }

    //Check for Special Characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?";:{}|<>]'))){
      return 'Password must conatain at least one Special Chaaracter.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is required.';
    }

    // Regular expression for phone number validation(assuming a 10-digit phone number format)
    final phoneRegExp = RegExp(r"^\d{10}$");

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number (10 digits required)';
    }
    return null;
  }
}