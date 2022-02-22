import 'package:ecommerce_shop/shared/bloc_provider.dart';
import 'package:ecommerce_shop/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/orders_metrics/orders.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OrderCubit()..readOrdersJson(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OrdersMetrics(),
      ),
    );
  }
}


