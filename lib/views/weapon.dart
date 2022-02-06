import 'package:fluent_ui/fluent_ui.dart';

class WeaponPage extends StatefulWidget {
  const WeaponPage({Key? key}) : super(key: key);

  @override
  _WeaponPageState createState() => _WeaponPageState();
}

class _WeaponPageState extends State<WeaponPage> {
  Color buttonColor = Color(0xFF7DC3EC);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2E3539),
      child: Padding(
        padding: EdgeInsets.only(top: 8, bottom: 64),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
                      'Pistolas',
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
                      'Armas Leves',
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
                      'Armas Pesadas',
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
