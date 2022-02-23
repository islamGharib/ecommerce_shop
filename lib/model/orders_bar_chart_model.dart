import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class OrdersGraphModel{
  final String month;
  final int numberOfOrdersPerMonth;
  final charts.Color barColor;

  OrdersGraphModel(this.month,this.numberOfOrdersPerMonth,this.barColor);
}