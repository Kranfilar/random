import 'package:fluent_ui/fluent_ui.dart';

class ModePage extends StatefulWidget {
  const ModePage({Key? key}) : super(key: key);

  @override
  _ModePageState createState() => _ModePageState();
}

class _ModePageState extends State<ModePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Button(
          child: Icon(FluentIcons.action_center),
          onPressed: () => {Navigator.pop(context)}),
    );
  }
}
