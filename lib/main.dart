import 'package:fake_store/core/di/dependency_injection.dart';
import 'package:fake_store/fake_store_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();

  runApp(const FakeStoreApp());
}
