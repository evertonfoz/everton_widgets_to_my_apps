import 'package:flutter/material.dart';

class CheckBoxECA extends StatefulWidget {
  final Function(bool) onChanged;
  final String? text;
  final RichText? richText;
  final double scale;
  final Color color;
  final double size;
  final bool? checked;
  final MainAxisAlignment mainAxisAlignment;

  const CheckBoxECA({
    required this.onChanged,
    this.text,
    this.richText,
    this.scale = 1,
    this.color = Colors.black,
    this.size = 24,
    this.checked,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : assert((text != null && richText == null) ||
            (text == null && richText != null));

  @override
  _CheckBoxECAState createState() => _CheckBoxECAState();
}

class _CheckBoxECAState extends State<CheckBoxECA> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.mainAxisAlignment,
      children: [
        Transform.scale(
          scale: widget.scale,
          child: SizedBox(
            width: widget.size,
            height: widget.size,
            child: Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              fillColor: MaterialStateProperty.all(widget.color),
              value: widget.checked ?? _checked,
              onChanged: (value) {
                if (widget.checked == null) {
                  setState(() {
                    _checked = !_checked;
                  });
                }

                widget.onChanged(value!);
              },
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        // Expanded(
        //   flex: 1,
        //   child: _buildText(),
        // ),
        _buildText(),
      ],
    );
  }

  _buildText() {
    if (widget.text != null) {
      return Text(widget.text!);
    }
    return widget.richText;
  }
}
