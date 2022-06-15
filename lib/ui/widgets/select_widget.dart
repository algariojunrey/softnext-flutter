import 'package:flutter/material.dart';

class Select extends StatefulWidget {
  final List<String> options;

  const Select({super.key, required this.options});

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  int _index = 0;
  String _text = "";
  bool _disabledUp = true;
  bool _disabledDown = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _text = widget.options[0];
    });
  }

  _up() {
    setState(() {
      if (_index > 0) {
        _index--;
        _text = widget.options[_index];
        _disabledUp = _index == 0;
        _disabledDown = _index == widget.options.length - 1;
      }
    });
  }

  _down() {
    setState(() {
      if (_index < (widget.options.length - 1)) {
        _index++;
        _text = widget.options[_index];
        _disabledDown = _index == widget.options.length - 1;
        _disabledUp = _index == 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 25.0,
              child: Text(_text),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 30.0,
                width: 30.0,
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  splashRadius: 15,
                  icon: const Icon(Icons.arrow_drop_up),
                  onPressed: _disabledUp ? null : _up,
                ),
              ),
              Container(
                height: 30.0,
                width: 30.0,
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                    top: BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  splashRadius: 15,
                  icon: const Icon(Icons.arrow_drop_down),
                  onPressed: _disabledDown ? null : _down,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
