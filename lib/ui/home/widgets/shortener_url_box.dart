import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/presentation.dart';

class ShortenerUrlBox extends StatelessWidget {
  ShortenerUrlBox(this.state, {Key? key}) : super(key: key);

  final ShortenLinkState state;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  controller: _urlController,
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
                  validator: (String? val) {
                    if (val == null || val.isEmpty) {
                      return "Please enter an url";
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(width: 20),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blueAccent,
              child: IconButton(
                onPressed: () => _shortenUrl(context),
                icon: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );

  void _shortenUrl(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;

    context.read<ShortenLinkCubit>().shortenUrl(_urlController.text);

    _urlController.clear();
  }
}
