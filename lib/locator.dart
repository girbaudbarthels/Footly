import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => NavigationViewModel());
}
