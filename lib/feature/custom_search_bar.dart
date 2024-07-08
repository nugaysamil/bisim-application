// ignore_for_file: use_key_in_widget_constructors

import 'package:bisim_app/product/generation/colors.gen.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: ColorName.blueGrey,
          borderRadius: BorderRadius.circular(8),
        ),  
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                controller: _controller,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Brew Mix Coffee Shop, Mur',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.clear, color: Colors.white),
              onPressed: _controller.clear,
            ),
            IconButton(
              icon: const Icon(Icons.mic, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
