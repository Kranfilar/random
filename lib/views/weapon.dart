import 'package:fluent_ui/fluent_ui.dart';
import 'package:random/views/weapons/havyWeapon.dart';
import 'package:random/views/weapons/lowWeapon.dart';
import 'package:random/views/weapons/pistol.dart';

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
      decoration: BoxDecoration(
        color: const Color(0xFF2E3539),
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(
            image: NetworkImage(
                'https://raw.githubusercontent.com/Kranfilar/random/main/assets/images/icons/valorant_glass.png'),
            fit: BoxFit.none,
            alignment: Alignment.center),
      ),
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
                          builder: (context) => const PistolPage(),
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
                          builder: (context) => const lowWeaponPage(),
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
                          builder: (context) => const havyWeaponPage(),
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
