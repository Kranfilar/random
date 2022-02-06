import 'package:fluent_ui/fluent_ui.dart';
import 'package:random/views/agent.dart';
import 'package:random/views/map.dart';
import 'package:random/views/mode.dart';
import 'package:random/views/weapon.dart';
import 'package:random/views/weapons/pistol.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color buttonColor = Color(0xFF7DC3EC);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2E3539),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 128),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sorteio Valorant',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Tooltip(
                    message: 'Sorteio de agentes',
                    child: Button(
                      style: ButtonStyle(
                        padding: ButtonState.all(
                          const EdgeInsets.symmetric(
                              horizontal: 48, vertical: 16),
                        ),
                        backgroundColor: ButtonState.all(buttonColor),
                      ),
                      child: const Text(
                        'Agente',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          FluentPageRoute(
                            builder: (context) => const AgentPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Tooltip(
                    message: 'Sorteio de armas',
                    child: Button(
                      style: ButtonStyle(
                        padding: ButtonState.all(
                          const EdgeInsets.symmetric(
                              horizontal: 48, vertical: 16),
                        ),
                        backgroundColor: ButtonState.all(buttonColor),
                      ),
                      child: const Text(
                        'Arma',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          FluentPageRoute(
                            builder: (context) => const WeaponPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Tooltip(
                    message: 'Sorteio de Mapas',
                    child: Button(
                      style: ButtonStyle(
                        padding: ButtonState.all(
                          const EdgeInsets.symmetric(
                              horizontal: 48, vertical: 16),
                        ),
                        backgroundColor: ButtonState.all(buttonColor),
                      ),
                      child: const Text(
                        'Mapa',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          FluentPageRoute(
                            builder: (context) => MapPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Tooltip(
                    message: 'Sorteio de Modos',
                    child: Button(
                      style: ButtonStyle(
                        padding: ButtonState.all(
                          const EdgeInsets.symmetric(
                              horizontal: 48, vertical: 16),
                        ),
                        backgroundColor: ButtonState.all(buttonColor),
                      ),
                      child: const Text(
                        'Modo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          FluentPageRoute(
                            builder: (context) => ModePage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
