<h1 align="center">ecommerce_shop</h1>

Flutter app based on Some mathematical equations and bar chart on a fixed json data file

## Installation

Add the package to your dependencies:

```yaml
dependencies:
  flutter:
    sdk: flutter
  bloc: ^7.2.1
  flutter_bloc: ^7.3.0
  charts_flutter: ^0.11.0
```

run `dart pub get` to downlaod the package.


### Screenshots

![Screenshot](https://user-images.githubusercontent.com/9901911/155974479-0544ea23-8c04-4bb3-bc51-1cfa67b8483e.jpeg)


# Widgets

## Table
containing numeric metrics about the orders: total count, average price and number of returns

```dart
Table(
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
```

## BarChart
 a graph displaying the number of orders as the Y-axis and time as the X-axis
 
 ```dart
Container(
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
```

