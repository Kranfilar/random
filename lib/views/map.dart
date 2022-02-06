import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final pageController = PageController(viewportFraction: 0.8, keepPage: true);
  var maps = [
    'Ascent',
    'Bind',
    'Breeze',
    //  'Fracture'
    'Haven',
    'icebox',
    'Split',
  ];
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          }),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: maps.length,
              controller: controller,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 400,
                  width: 600,
                  child: Text(
                    maps[index],
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://s2.glbimg.com/KJmfhc3dzVmjSFHjeSTSpm_W9sQ=/0x0:1920x1080/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/d/A/jze8TURRKhTKz9LfLvRA/valorant1.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                );
              }),
        ));
  }
}
