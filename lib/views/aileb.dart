import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:fluent_ui/fluent_ui.dart';

class DiscData {
  static final _rng = Random();

  final double size;
  final Color color;
  final Alignment alignment;

  DiscData()
      : size = _rng.nextDouble() * 80 + 32,
        color = Color.fromARGB(
          200,
          _rng.nextInt(255),
          _rng.nextInt(255),
          _rng.nextInt(255),
        ),
        alignment = Alignment(
          _rng.nextDouble() * 2 - 1,
          _rng.nextDouble() * 2 - 1,
        );
}

class AilebPage extends StatefulWidget {
  const AilebPage({ Key? key }) : super(key: key);

  @override
  _AilebPageState createState() => _AilebPageState();
}

class _AilebPageState extends State<AilebPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
          color: const Color(0xFF15202D),
          child: const SizedBox.expand(
            child: VariousDiscs(5),
          ),
        ),
    );
  }
}

class VariousDiscs extends StatefulWidget {
  final int numberOfDiscs;

  const VariousDiscs(this.numberOfDiscs);

  @override
  _VariousDiscsState createState() => _VariousDiscsState();
}

class _VariousDiscsState extends State<VariousDiscs> {
  final _discs = <DiscData>[];

  @override
  void initState() {
    super.initState();
    _makeDiscs();
  }

  void _makeDiscs() {
    _discs.clear();
    for (int i = 0; i < widget.numberOfDiscs; i++) {
      _discs.add(DiscData());
    }
  }
  Color buttonColor = Color(0xFF7DC3EC);
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Color(0xFF0F1923),
      onPressed: () => setState(() {
        _makeDiscs();
        score -= 10;
        score <= 0 ? score = 0 : score;
      }),
      child: Stack(
        children: [
          Tooltip(
            message: 'Voltar à tela inicial',
            child: IconButton(
              icon: Icon(
                Icons.arrow_left,
                color: Colors.white,
                size: 24,
              ),
              onPressed: () => {Navigator.pop(context)},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ai leb',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  Text(
                    '$score',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () => setState(() {
              _makeDiscs();
              score += 5;
            }),
            child: Stack(children: [
              for (final disc in _discs)
                Positioned.fill(
                  child: AnimatedAlign(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    alignment: disc.alignment,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      decoration: BoxDecoration(
                        color: disc.color,
                        shape: BoxShape.circle,
                      ),
                      height: disc.size,
                      width: disc.size,
                    ),
                  ),
                ),
            ]),
          ),
        ],
      ),
    );
  }
}
