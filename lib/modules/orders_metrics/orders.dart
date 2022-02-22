import 'package:ecommerce_shop/shared/cubit/cubit.dart';
import 'package:ecommerce_shop/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersMetrics extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderCubit, OrderStates>(
      listener: (context, state){},
      builder: (context, state){
        return Scaffold(
          body: Container(),
        );
      },
    );
  }
}
