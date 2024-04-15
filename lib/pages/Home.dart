import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MapShapeSource? _shapeSource;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _shapeSource =
        const MapShapeSource.asset("assets/ir.json", shapeDataField: "name");
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SfMaps(layers: [MapShapeLayer(source: _shapeSource!)]),
        ),
      ),
    );
  }
}
