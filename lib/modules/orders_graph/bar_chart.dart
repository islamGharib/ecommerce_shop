import 'package:ecommerce_shop/model/orders_bar_chart_model.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarChart extends StatelessWidget {
  final List<OrdersGraphModel> data;

  BarChart(this.data);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<OrdersGraphModel, String>> series = [
      charts.Series(
          id: "orders",
          data: data,
          domainFn: (OrdersGraphModel series, _) => series.month,
          measureFn: (OrdersGraphModel series, _) => series.numberOfOrdersPerMonth,
          colorFn: (OrdersGraphModel series, _) => series.barColor
      )
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Numbers Of Orders Per Month in 2021",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
