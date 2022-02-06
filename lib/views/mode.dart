import 'package:fluent_ui/fluent_ui.dart';

class ModePage extends StatefulWidget {
  const ModePage({Key? key}) : super(key: key);

  @override
  _ModePageState createState() => _ModePageState();
}

class _ModePageState extends State<ModePage> {
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
                      'Sortear Modo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => {},
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
