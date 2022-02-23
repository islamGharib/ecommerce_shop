import 'package:ecommerce_shop/model/orders_bar_chart_model.dart';
import 'package:ecommerce_shop/modules/orders_graph/Orders_Chart.dart';
import 'package:ecommerce_shop/shared/cubit/cubit.dart';
import 'package:ecommerce_shop/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class OrdersBarChartGraph extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderCubit, OrderStates>(
      listener: (context, state){},
      builder: (context, state){
        OrderCubit cubit = OrderCubit.get(context);
        final List<OrdersGraphModel> data = [
          OrdersGraphModel('Jan', cubit.numberOfOrdersPerMonth[1], charts.ColorUtil.fromDartColor(Colors.blue),),
          OrdersGraphModel('Feb', cubit.numberOfOrdersPerMonth[2], charts.ColorUtil.fromDartColor(Colors.blue),),
          OrdersGraphModel('Mar', cubit.numberOfOrdersPerMonth[3], charts.ColorUtil.fromDartColor(Colors.blue),),
          OrdersGraphModel('Apr', cubit.numberOfOrdersPerMonth[4], charts.ColorUtil.fromDartColor(Colors.blue),),
          OrdersGraphModel('May', cubit.numberOfOrdersPerMonth[5], charts.ColorUtil.fromDartColor(Colors.blue),),
          OrdersGraphModel('Jun', cubit.numberOfOrdersPerMonth[6], charts.ColorUtil.fromDartColor(Colors.blue),),
          OrdersGraphModel('Jul', cubit.numberOfOrdersPerMonth[7], charts.ColorUtil.fromDartColor(Colors.blue),),
          OrdersGraphModel('Aug', cubit.numberOfOrdersPerMonth[8], charts.ColorUtil.fromDartColor(Colors.blue),),
          OrdersGraphModel('Sep', cubit.numberOfOrdersPerMonth[9], charts.ColorUtil.fromDartColor(Colors.blue),),
          OrdersGraphModel('Oct', cubit.numberOfOrdersPerMonth[10], charts.ColorUtil.fromDartColor(Colors.blue),),
        ];
        return Scaffold(
          appBar: AppBar(
            title: Text('Orders Bar Chart'),
          ),
          body: Center(
            child: OrdersChart(data),
          ),

        );
      },
    );
  }
}


