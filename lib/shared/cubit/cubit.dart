import 'dart:convert';

import 'package:ecommerce_shop/shared/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<OrderStates>{
  OrderCubit() : super(OrdersInitialState());
  static OrderCubit get(context) => BlocProvider.of(context);

  List orders = [];
  double averagePrice = 0;
  int numberOfReturns = 0;
  void readOrdersJson()  {
    emit(OrdersLoadingState());
    rootBundle.loadString('assets/orders.json').then((value) {
      orders = json.decode(value);
      print(orders[1]["price"]);
      averagePrice = (orders.map((e) => double.parse((e['price'].replaceAll('\$','').replaceAll(',','')))).reduce((value, element) => value+element)/orders.length);
      orders.forEach((element) {
        if(element['status'] == 'RETURNED')
          numberOfReturns+=1;
      });
      emit(OrdersSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(OrdersErrorState());
    });
  }

}