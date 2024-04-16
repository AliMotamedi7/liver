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
  MapShapeSource? _shapeSource;
  List<MapModel>? _mapData;

  List<String> name = [
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
    _mapData = _getMapData();
    super.initState();
    _shapeSource = MapShapeSource.asset(
      "assets/ir.json",
      shapeDataField: "name",
      dataCount: _mapData!.length,
      primaryValueMapper: (int index) => _mapData![index].name,
      dataLabelMapper: (index) => _mapData![index].name,
      shapeColorValueMapper: (index) => _mapData![index].color,
    );
  }

  List<MapModel> _getMapData() {
    Color rand =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

    return <MapModel>[
      MapModel(rand, name[0]),
      MapModel(rand, name[1]),
      MapModel(rand, name[2]),
      MapModel(rand, name[3]),
      MapModel(rand, name[4]),
      MapModel(rand, name[5]),
      MapModel(rand, name[6]),
      MapModel(rand, name[7]),
      MapModel(rand, name[8]),
      MapModel(rand, name[9]),
      MapModel(rand, name[10]),
      MapModel(rand, name[11]),
      MapModel(rand, name[12]),
      MapModel(rand, name[13]),
      MapModel(rand, name[14]),
      MapModel(rand, name[15]),
      MapModel(rand, name[16]),
      MapModel(rand, name[17]),
      MapModel(rand, name[18]),
      MapModel(rand, name[19]),
      MapModel(rand, name[20]),
      MapModel(rand, name[21]),
      MapModel(rand, name[22]),
      MapModel(rand, name[24]),
      MapModel(rand, name[25]),
      MapModel(rand, name[26]),
      MapModel(rand, name[27]),
      MapModel(rand, name[28]),
      MapModel(rand, name[29]),
      MapModel(rand, name[30]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SfMaps(layers: [
            MapShapeLayer(
              source: _shapeSource!,
              showDataLabels: true,
            )
          ]),
        ),
      ),
    );
  }
}
