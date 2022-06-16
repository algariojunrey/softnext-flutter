import 'package:flutter/material.dart';

class Dropdown<ListOptionType> extends StatefulWidget {
  final List<ListOptionType> options;
  final Function onChanged;

  const Dropdown({Key? key, required this.options, required this.onChanged})
      : super(key: key);

  @override
  State<Dropdown> createState() => _DropDownState<ListOptionType>();
}

class _DropDownState<ValueType> extends State<Dropdown> {
  ValueType? _value;

  @override
  void initState() {
    super.initState();
    setState(() {
      _value = widget.options[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<ValueType>(
      value: _value,
      icon: const Icon(Icons.arrow_drop_down),
      underline: Container(),
      onChanged: (ValueType? newValue) {
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
      items: widget.options.map<DropdownMenuItem<ValueType>>((value) {
        return DropdownMenuItem<ValueType>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }
}
