import 'package:fluent_ui/fluent_ui.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Button(
          child: Icon(FluentIcons.action_center),
          onPressed: () => {Navigator.pop(context)}),
    );
  }
}
