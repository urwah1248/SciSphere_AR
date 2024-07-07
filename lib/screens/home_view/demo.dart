import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class DemoPage extends StatelessWidget {
  DemoPage({super.key});

  late UnityWidgetController _unityWidgetController;

  // scaffold key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   key: _scaffoldKey,
    //   body: SafeArea(
    //     bottom: false,
    //     child: WillPopScope(
    //       onWillPop: null,
    //       child: Container(
    //         color: Colors.yellow,
    //         child: UnityWidget(
    //           onUnityCreated: onUnityCreated,
    //           onUnitySceneLoaded: (sceneName) {
    //             changeCurrentLevel("2");
    //           },
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
        key: _scaffoldKey,
        body: Card(
          margin: const EdgeInsets.all(8),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              UnityWidget(
                onUnityCreated: onUnityCreated,
                onUnityMessage: onUnityMessage,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        OutlinedButton.icon(onPressed: () => changeCurrentLevel("2"), icon: const Icon(Icons.arrow_back_rounded), label: const Text("Level 1")),
                        //OutlinedButton.icon(onPressed: () => changeCurrentLevel("Level2"), icon: const Icon(Icons.arrow_forward_rounded), label: const Text("Level 2")),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  void onUnityCreated(controller) {
    _unityWidgetController = controller;
  }

  void onUnityMessage(String msg) {
    print("Received message from unity: ${msg.toString()}")
    // Call back to home method if msg is "exit"
    // Add Logic here
    
  }

  changeCurrentLevel(String levelName) {
    _unityWidgetController.postMessage(
      'UnityMessageManager',
      'OnMessage',
      levelName,
    );
  }
}
