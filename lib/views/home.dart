import 'package:fluent_ui/fluent_ui.dart';
import 'package:random/views/agent.dart';
import 'package:random/views/aileb.dart';
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
      decoration: BoxDecoration(
        color: const Color(0xFF2E3539),
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(
            image: NetworkImage(
                'https://raw.githubusercontent.com/Kranfilar/random/main/assets/images/icons/valorant_glass.png'),
            fit: BoxFit.none,
            alignment: Alignment.center),
      ),
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
              Wrap(
                spacing: 0,
                runSpacing: 0,
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.spaceAround,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Tooltip(
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
                  ),
                  Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Tooltip(
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Tooltip(
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
                          'Ai leb',
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
                              builder: (context) => AilebPage(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
/*****************Tooltip(
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
*****************/
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
