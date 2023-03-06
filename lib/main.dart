import 'package:flutter/material.dart';

import 'app/core/config/env/env.dart';
import 'app/repositories/delivey_app.dart';

void main() async {
  await Env.instance.load();

  runApp(DeliveryApp());
}
