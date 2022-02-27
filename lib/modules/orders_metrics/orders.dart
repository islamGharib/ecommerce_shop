import 'package:ecommerce_shop/modules/orders_graph/orders_graph.dart';
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Table(
                    border: TableBorder.symmetric(inside: BorderSide(width: 2, color: Colors.black)),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    columnWidths: const{
                      0: FlexColumnWidth(),
                      1: FlexColumnWidth(),
                      2: FlexColumnWidth(),
                    },
                    children: [
                      TableRow(
                        decoration: BoxDecoration(color: Colors.blue[100],
                          border: Border.all(width: 1,),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        children: [
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
              SizedBox(height: 30,),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrdersGraph(),
                      ),
                    );
                  },
                  child: Text('View Bar Chart'),
              ),
            ],
          ),
        );
      },
    );
  }
}
