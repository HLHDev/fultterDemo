import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final void Function (String value) onSubmit;
  final bool isEnabel;

  SearchBar({
    Key key,
    this.onSubmit,
    this.isEnabel
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 32,
      child: TextField(
        enabled: isEnabel,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.search),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onSubmitted: onSubmit,
      ),
    );
  }

}