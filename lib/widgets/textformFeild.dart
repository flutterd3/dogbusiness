// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFeildWidget extends StatefulWidget {
  final String title;
  final bool obscureText;
  final String hintText;
  final TextEditingController controller;

  const TextFeildWidget({
    Key? key,
    required this.title,
    this.obscureText = false,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  State<TextFeildWidget> createState() => _TextFeildWidgetState();
}

class _TextFeildWidgetState extends State<TextFeildWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.orange.withOpacity(0.4),
              blurRadius: 8,
              spreadRadius: 2,
            )
          ]),
          child: TextField(
            obscureText: widget.obscureText,
            controller: widget.controller,
            maxLines: 1,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
                  width: 1,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
