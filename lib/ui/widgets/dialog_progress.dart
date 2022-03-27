import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DialogProgress extends StatelessWidget {
  final bool isLoading;
  DialogProgress(this.isLoading);

  Widget loading() {
    return Stack(children: const <Widget>[
      Opacity(
        opacity: 0.1,
        child: ModalBarrier(dismissible: false, color: Colors.grey),
      ),
      Center(
        child: SpinKitChasingDots(
          color: Colors.lightBlue,
          size: 35.0,
        ),
      ),
    ]);
  }

  Widget notLoading() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? loading() : notLoading();
  }
}
