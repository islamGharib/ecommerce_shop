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
        OrderCubit cubit = OrderCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('Orders Numeric Metrics'),
          ),
          body: Center(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Text(
                        'total count',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        'average price',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        'number of returns',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  ),
                  TableRow(children: [
                    Text(
                        '${cubit.orders.length}',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                        '\$${cubit.averagePrice.toStringAsFixed(2)}',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                        '${cubit.numberOfReturns}',
                      textAlign: TextAlign.center,
                    ),
                  ])
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
