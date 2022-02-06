import 'dart:ui';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'dart:math';

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
    'Icebox',
    'Split',
  ];

  getImage(index) {
    String mapURL =
        "https://raw.githubusercontent.com/Kranfilar/random/main/assets/images/maps/" +
            maps[index] +
            ".png";
    return mapURL;
  }

  String result = "";
  randomia() {
    Random random = new Random();
    int randomNumber = random.nextInt(maps.length);
    setState(() {
      result = maps[randomNumber];
      print(result);
    });
  }

  Color buttonColor = Color(0xFF7DC3EC);
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2E3539),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Tooltip(
                    message: 'Voltar à tela inicial',
                    child: IconButton(
                      style: ButtonStyle(
                        backgroundColor: ButtonState.all(buttonColor),
                      ),
                      icon: Icon(
                        FluentIcons.page_left,
                        color: Colors.white,
                        size: 24,
                      ),
                      onPressed: () => {Navigator.pop(context)},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                }),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: maps.length,
                    controller: controller,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 32),
                        height: 400,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            maps[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: NetworkImage(getImage(index)),
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter),
                        ),
                      );
                    }),
              ),
            ),
            Text(
              result,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            Tooltip(
              message: 'Um mapa aleatório aparecerar ao clicar o botão',
              child: Button(
                  style: ButtonStyle(
                    padding: ButtonState.all(
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                    ),
                    backgroundColor: ButtonState.all(buttonColor),
                  ),
                  child: const Text(
                    'Sortear o mapa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => randomia()),
            ),
          ],
        ),
      ),
    );
  }
}
