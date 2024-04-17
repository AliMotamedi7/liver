import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

import '../model/map_model.dart';
import 'dart:math' as math;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late MapShapeSource _shapeSource;
  late List<MapModel> _mapData;

  List<String> provinceName = [
    "آزبایجان غربی",
    "آزبایجان شرقی",
    "اردبیل",
    "گیلان",
    "کردستان",
    "کرمانشاه",
    "ایلام",
    "خوزستان",
    "خراسان شمالی",
    "گلستان",
    "خراسان رضوی",
    "خراسان جنوبی",
    "سیستان و بلوچستان",
    "بوشهر",
    "هرمزگام",
    "مازندران",
    "سمنان",
    "زنجان",
    "قزوین",
    "مرکزی",
    "اصفهان",
    "چهار محال و بختیاری",
    "کهکیلویه و بویر احمر",
    "فارس",
    "کرمان",
    "همدان",
    "لرستان",
    "یزد",
    "قم",
    "تهران",
    "البرز",
  ];

  @override
  void initState() {
    // TODO: implement initState
    _mapData = <MapModel>[
      MapModel(Colors.orange, provinceName[0]),
      MapModel(Colors.orange, provinceName[1]),
      MapModel(Colors.orange, provinceName[2]),
      MapModel(Colors.orange, provinceName[3]),
      MapModel(Colors.orange, provinceName[4]),
      MapModel(Colors.orange, provinceName[5]),
      MapModel(Colors.orange, provinceName[6]),
      MapModel(Colors.orange, provinceName[7]),
      MapModel(Colors.orange, provinceName[8]),
      MapModel(Colors.orange, provinceName[9]),
      MapModel(Colors.orange, provinceName[10]),
      MapModel(Colors.orange, provinceName[11]),
      MapModel(Colors.orange, provinceName[12]),
      MapModel(Colors.orange, provinceName[13]),
      MapModel(Colors.orange, provinceName[14]),
      MapModel(Colors.orange, provinceName[15]),
      MapModel(Colors.orange, provinceName[16]),
      MapModel(Colors.red, provinceName[17]),
      MapModel(Colors.orange, provinceName[18]),
      MapModel(Colors.orange, provinceName[19]),
      MapModel(Colors.orange, provinceName[20]),
      MapModel(Colors.orange, provinceName[21]),
      MapModel(Colors.orange, provinceName[22]),
      MapModel(Colors.orange, provinceName[24]),
      MapModel(Colors.orange, provinceName[25]),
      MapModel(Colors.orange, provinceName[26]),
      MapModel(Colors.orange, provinceName[27]),
      MapModel(Colors.orange, provinceName[28]),
      MapModel(Colors.orange, provinceName[29]),
      MapModel(Colors.orange, provinceName[30]),
    ];
    ;
    _shapeSource = MapShapeSource.asset(
      "assets/iran_geo.json",
      shapeDataField: "NAME_1",
      dataCount: _mapData.length,
      primaryValueMapper: (int index) {
        print(_mapData[index].name);
        print(_mapData[index].color);
        return _mapData[index].name;
      },
      shapeColorValueMapper: (int index) => _mapData[index].color,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SfMaps(layers: [
            MapShapeLayer(
              source: _shapeSource,
              legend: const MapLegend(MapElement.shape),
              tooltipSettings: MapTooltipSettings(color: Colors.orange),
              shapeTooltipBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(_mapData[index].name),
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}
