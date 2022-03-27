import 'package:flutter/material.dart';

class ShortenerUrlBox extends StatelessWidget {
  const ShortenerUrlBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20, 24, 12, 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintText: 'Write or paste your url here',
              ),
            ),
          ),
          const SizedBox(width: 20),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueAccent,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: Colors.white,
              ),
            ),
          )
        ],
      );
}
