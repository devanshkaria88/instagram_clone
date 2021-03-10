import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibration/vibration.dart';

class camerascreen extends StatefulWidget {
  List<CameraDescription> cameras;

  camerascreen(this.cameras);

  @override
  _camerascreenState createState() => _camerascreenState();
}

class _camerascreenState extends State<camerascreen> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = new CameraController(widget.cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  ValueNotifier _notifier = ValueNotifier(2);
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (!controller.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            CameraPreview(controller),
            Positioned(
              child: ValueListenableBuilder(
                valueListenable: _notifier,
                builder: (context, c, v) {
                  return Stack(
                    children: [
                      _notifier.value == 1
                          ? Container(
                              width: w * 0.5,
                              height: h,
                              decoration: new BoxDecoration(
                                gradient: new LinearGradient(
                                    colors: [
                                      Colors.black.withAlpha(90),
                                      Colors.black.withAlpha(70),
                                      Colors.black.withAlpha(60),
                                      Colors.black.withAlpha(50),
                                      Colors.transparent,
                                      /*AppColours.appgradientfirstColour,
                      AppColours.appgradientsecondColour*/
                                    ],
                                    begin: const FractionalOffset(0.1, 0.0),
                                    end: const FractionalOffset(0.5, 0.0),
                                    stops: [0.2, 0.3, 0.6, 0.8, 1.0],
                                    tileMode: TileMode.clamp),
                              ),
                            )
                          : Container(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icon/text-font.svg",
                                  height: 30,
                                  width: 35,
                                  fit: BoxFit.cover,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                _notifier.value == 1
                                    ? Text(
                                        "Create",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    : Container(),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icon/infinity.svg",
                                  height: 30,
                                  width: 35,
                                  fit: BoxFit.cover,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                _notifier.value == 1
                                    ? Text(
                                        "Boomerang",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    : Container(),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icon/layout.svg",
                                  height: 25,
                                  width: 35,
                                  fit: BoxFit.cover,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                _notifier.value == 1
                                    ? Text(
                                        "Layout",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    : Container(),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icon/circle.svg",
                                  height: 30,
                                  width: 35,
                                  fit: BoxFit.cover,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                _notifier.value == 1
                                    ? Text(
                                        "Multi-capture",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    : Container(),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Transform.rotate(
                                  angle: 3.14 / 4 * 1.2,
                                  child: SvgPicture.asset(
                                    "assets/icon/empty-set-mathematical-symbol.svg",
                                    color: Colors.white,
                                    width: 30,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                _notifier.value == 1
                                    ? Text(
                                        "Level",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    : Container(),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            _notifier.value == 1
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                CupertinoIcons
                                                    .photo_on_rectangle,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              _notifier.value == 1
                                                  ? Text(
                                                      "Photobooth",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  : Container(),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              _notifier.value == 1
                                                  ? Text(
                                                      "Superzoom",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  : Container(),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.stop_circle_outlined,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              _notifier.value == 1
                                                  ? Text(
                                                      "Hands-free",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  : Container(),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          )
                                        ],
                                      )),
                                      GestureDetector(
                                        onTap: () {
                                          _notifier.value = 2;
                                          Vibration.vibrate(
                                              duration: 100, amplitude: 100);
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.chevron_up,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Close",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      _notifier.value = 1;
                                      Vibration.vibrate(
                                          duration: 100, amplitude: 100);
                                    },
                                    child: Icon(
                                      CupertinoIcons.chevron_down,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    shape: BoxShape.circle),
                padding: EdgeInsets.all(3),
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  elevation: 25.0,
                ),
              ),
              top: MediaQuery.of(context).size.height - 150.0,
              left: MediaQuery.of(context).size.width * 0.5 - 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
