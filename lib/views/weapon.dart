import 'package:fluent_ui/fluent_ui.dart';

class WeaponPage extends StatefulWidget {
  const WeaponPage({Key? key}) : super(key: key);

  @override
  _WeaponPageState createState() => _WeaponPageState();
}

class _WeaponPageState extends State<WeaponPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Button(
          child: Icon(FluentIcons.action_center),
          onPressed: () => {Navigator.pop(context)}),
    );
  }
}
