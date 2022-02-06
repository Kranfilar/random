import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';

class AgentPage extends StatefulWidget {
  const AgentPage({Key? key}) : super(key: key);

  @override
  _AgentPageState createState() => _AgentPageState();
}

class _AgentPageState extends State<AgentPage> {
  var agents = [
    'Astra',
    'Breach',
    'Brimstone',
    'Chamber',
    'Cypher',
    'Jett',
    'Kayo',
    'Killjoy',
    'Neon',
    'Omen',
    'Phoenix',
    'Raze',
    'Reyna',
    'Sage',
    'Skye',
    'Sova',
    'Viper',
    'Yoru'
  ];
  getImage(index) {
    String mapURL =
        "https://raw.githubusercontent.com/Kranfilar/random/main/assets/images/agents/" +
            agents[index] +
            ".jpg";
    return mapURL;
  }

  String primaryResult = "";
  String secondaryResult = "";
  primaryRandomia() {
    Random primaryRandom = new Random();
    int primaryRandomNumber = primaryRandom.nextInt(agents.length);
    Random secondaryRandom = new Random();
    int secondaryRandomNumber = primaryRandom.nextInt(agents.length);
    while (secondaryRandomNumber == primaryRandomNumber) {
      secondaryRandomNumber = primaryRandom.nextInt(agents.length);
    }
    setState(() {
      primaryResult = agents[primaryRandomNumber];
      print(primaryResult);
      secondaryResult = agents[secondaryRandomNumber];
      print(secondaryResult);
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
                    itemCount: agents.length,
                    controller: controller,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 32),
                        height: 400,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            agents[index],
                            style: TextStyle(
                                color: buttonColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: NetworkImage(getImage(index)),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter),
                        ),
                      );
                    }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    primaryResult,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    secondaryResult,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
              ],
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
                  onPressed: () => primaryRandomia()),
            ),
          ],
        ),
      ),
    );
  }
}
