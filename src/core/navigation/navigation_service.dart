// Navigation service using GetX or Navigator
// lib/src/core/navigation/navigation_service.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationService {
  static NavigationService get to => Get.find<NavigationService>();

  /// Pushes a new route onto the stack
  Future<T> navigateTo<T>(
    String routeName, {
    dynamic arguments,
    required T fallback,
  }) async {
    _log("Navigate → $routeName");
    final result = await Get.toNamed<T>(routeName, arguments: arguments);
    return result ?? fallback;
  }

  /// Replaces the current route
  Future<T> replaceWith<T>(
    String routeName, {
    dynamic arguments,
    required T fallback,
  }) async {
    _log("Replace → $routeName");
    final result = await Get.offNamed<T>(routeName, arguments: arguments);
    return result ?? fallback;
  }

  /// Removes all previous routes and goes to new one
  Future<T> clearStackAndShow<T>(
    String routeName, {
    dynamic arguments,
    required T fallback,
  }) async {
    _log("Clear Stack → $routeName");
    final result = await Get.offAllNamed<T>(routeName, arguments: arguments);
    return result ?? fallback;
  }

  /// Go back to previous screen
  void goBack<T>({T? result}) {
    _log("Back");
    Get.back(result: result);
  }

  /// Guarded navigation (e.g., require login)
  Future<void> navigateIfLoggedIn(
    String route, {
    dynamic arguments,
    required void Function() onNotLoggedIn,
  }) async {
    final isLoggedIn = true; // Replace with actual auth check
    if (isLoggedIn) {
      await navigateTo(route, arguments: arguments, fallback: true);
    } else {
      _log("Blocked: Not logged in");
      onNotLoggedIn();
    }
  }

  void _log(String message) {
    debugPrint('[NavigationService] $message');
    // Add Sentry, FirebaseAnalytics, etc. here
  }
}
