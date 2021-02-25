// MIT License
//
// Copyright (c) 2019 Simon Lightfoot
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Reader extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Reader> {
  int _index = 0;
  void onTap() {
    //if (_index == 1) return;
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        if (_index == 0)
          _index = 1;
        else
          _index = 0;
      });
    });
  }

  void emp() {}
  var list = <Widget>[
    ExampleScreen(
      topWidget: AlicePage1(),
      bottomWidget: AlicePage2(),
      //tapAction: emp,
    ),
    ExampleScreen(
      topWidget: AlicePage2(),
      bottomWidget: AlicePage3(),
      //tapAction: emp,
    )
    // Container(
    //   color: Colors.red,
    // ),
    // Container(
    //   color: Colors.amber,
    // )
  ];
  @override
  Widget build(BuildContext context) {
    print(_index);
    // TODO: implement build
    return GestureDetector(child: list[0]);
  }
}

class ExampleScreen extends StatefulWidget {
  final Widget topWidget;
  final Widget bottomWidget;
  final Function tapAction;
  const ExampleScreen(
      {Key key, this.topWidget, this.bottomWidget, this.tapAction})
      : super(key: key);
  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: 1,
      duration: const Duration(milliseconds: 450),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() {
    //widget.tapAction();
    if (_controller.status == AnimationStatus.dismissed ||
        _controller.status == AnimationStatus.reverse) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // PageTurnImage(
          //   amount: AlwaysStoppedAnimation(1.0),
          //   image: NetworkImage(
          //       'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/John_Masefield.djvu/page10-1024px-John_Masefield.djvu.jpg'),
          // ),
          PageTurnWidget(
            amount: AlwaysStoppedAnimation(1.0),
            child: widget.bottomWidget,
          ),
          InkWell(
              onTap: _onTap,
              child: PageTurnWidget(
                amount: _controller,
                child: widget.topWidget,
              )),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            height: 98.0,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget child) {
                return Opacity(
                    opacity: .1,
                    child: Slider(
                      value: _controller.value,
                      onChanged: (double value) {
                        _controller.value = value;
                      },
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AlicePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: TextStyle(fontSize: 16.0),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "অধ্যায়  ১",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Down the Rabbit-Hole",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                        "মানুষের প্রকৃতিকে নিয়ন্ত্রণ করার অদম্য মনোবাসনাকে ঘিরে ক্রমশ উন্নত থেকে উন্নততর প্রযুক্তিবিদ্যার সৃষ্টি।"
                        " প্রথমে সে শেখে বিভিন্ন শক্তির ব্যবহার, যেমন আগুনের আবিষ্কার। তারপর প্রকৃতির বিভিন্ন শক্তিকে প্রয়োজনমতো অপর শক্তিতে রূপান্তরের পালা,"),
                  ),
                  // Container(
                  //   margin: const EdgeInsets.only(left: 12.0),
                  //   color: Colors.black26,
                  //   width: 160.0,
                  //   height: 220.0,
                  //   child: Image.asset(
                  //     "image/test.jpg",
                  //     fit: BoxFit.scaleDown,
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                "অবশেষে বিংশ শতাব্দীর সূচনায় মানুষ সাফল্যের সঙ্গে রপ্ত করে প্রকৃতিকে'  নিয়ন্ত্রণ করার বিদ্যা এবং মেতে ওঠে প্রকৃতিকে বশ করার খেলায়। পরমাণু শক্তির আহরণ থেকে শুরু করে টেস্টটিউব বেবি, আবার চিকিৎসাবিজ্ঞানে ‘DNA-Engineering’ হলো এর প্রকৃষ্ট উদাহরণ। বুঝে না বুঝে দৈনন্দিন জীবনেও আমরা এইরকম প্রযুক্তির ব্যবহার করে থাকি। কীরকম? একটু ভেবে দেখলেই বোঝা যায় প্রতিটি ইলেকট্রনিক্সের যন্ত্র.\n"
                "\n",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlicePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: TextStyle(fontSize: 16.0),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "অধ্যায়  ২",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "ব্যাঙের গর্তের ভিতর",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                        "একজন আদিবাসী মানুষের কাছে নদী তার বোনের মতো, আর পাহাড় হলো তার ভাই।  নদী যদি আমাদের বোন হয়, তবে আমরা তো তার ওপর অত্যাচার করতে পারি না, তাকে ধ্বংস করতে পারি না। টিপাইমুখ বাঁধ বা জাফলংয়ে পিয়াইন নদীর ওপর পাথর উত্তোলন মেশিনের অত্যাচার রাষ্ট্র ও মানুষের আধুনিক উন্নয়নচিন্তার ফসল, যা সুদূরপ্রসারী ক্ষতি ডেকে আনবে ভবিষ্যর‌্যা প্রজন্মের জন্য। আজকের উন্নয়নভাবনা ও রাজনীতি নগদ হিসাবের ওপর দাঁড়িয়ে আছে। ভবিষ্যর‌্যা প্রজন্মের কী হবে, এই ভাবনা এখানে মূল্যহীন।"),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                "প্রকৃতি ও ধরিত্রী সম্পর্কে এ রকম জীবনদর্শন থাকলে আজ পৃথিবীতে এত পরিবেশ বিপর্যয় হতো না, মানুষ নদীর ওপর নগদ লাভের জন্য বাঁধ দিত না, নদী খুঁড়ে পানি দূষিত করত না। ভবিষ্যর‌্যা প্রজন্মের কী হবে, এই ভাবনা এখানে মূল্যহীন। .\n"
                "\n",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlicePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: TextStyle(fontSize: 16.0),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "CHAPTER 3",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Down the Rabbit-Hole",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                        "Alice was beginning to get very tired of sitting by her sister on the bank, and of"
                        " having nothing to do: once or twice she had peeped into the book her sister was "
                        "reading, but it had no pictures or conversations in it, `and what is the use of "
                        "a book,' thought Alice `without pictures or conversation?'"),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                "So she was considering in her own mind (as well as she could, for the hot day made her "
                "feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be "
                "worth the trouble of getting up and picking the daisies, when suddenly a White "
                "Rabbit with pink eyes ran close by her.\n"
                "\n",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// -----------------

class PageTurnWidget extends StatefulWidget {
  const PageTurnWidget({
    Key key,
    this.amount,
    this.backgroundColor = const Color(0xFFFFFFCC),
    this.child,
  }) : super(key: key);

  final Animation<double> amount;
  final Color backgroundColor;
  final Widget child;

  @override
  _PageTurnWidgetState createState() => _PageTurnWidgetState();
}

class _PageTurnWidgetState extends State<PageTurnWidget> {
  final _boundaryKey = GlobalKey();
  ui.Image _image;

  @override
  void didUpdateWidget(PageTurnWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.child != widget.child) {
      _image = null;
    }
  }

  void _captureImage(Duration timeStamp) async {
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;
    final boundary =
        _boundaryKey.currentContext.findRenderObject() as RenderRepaintBoundary;
    final image = await boundary.toImage(pixelRatio: pixelRatio);
    setState(() => _image = image);
  }

  @override
  Widget build(BuildContext context) {
    if (_image != null) {
      return CustomPaint(
        painter: _PageTurnEffect(
          amount: widget.amount,
          image: _image,
          backgroundColor: widget.backgroundColor,
        ),
        size: Size.infinite,
      );
    } else {
      WidgetsBinding.instance.addPostFrameCallback(_captureImage);
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final size = constraints.biggest;
          return Stack(
            overflow: Overflow.clip,
            children: <Widget>[
              Positioned(
                left: 1 + size.width,
                top: 1 + size.height,
                width: size.width,
                height: size.height,
                child: RepaintBoundary(
                  key: _boundaryKey,
                  child: widget.child,
                ),
              ),
            ],
          );
        },
      );
    }
  }
}

class PageTurnImage extends StatefulWidget {
  const PageTurnImage({
    Key key,
    this.amount,
    this.image,
    this.backgroundColor = const Color(0xFFFFFFCC),
  }) : super(key: key);

  final Animation<double> amount;
  final ImageProvider image;
  final Color backgroundColor;

  @override
  _PageTurnImageState createState() => _PageTurnImageState();
}

class _PageTurnImageState extends State<PageTurnImage> {
  ImageStream _imageStream;
  ImageInfo _imageInfo;
  bool _isListeningToStream = false;

  ImageStreamListener _imageListener;

  @override
  void initState() {
    super.initState();
    _imageListener = ImageStreamListener(_handleImageFrame);
  }

  @override
  void dispose() {
    _stopListeningToStream();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _resolveImage();
    if (TickerMode.of(context)) {
      _listenToStream();
    } else {
      _stopListeningToStream();
    }
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(PageTurnImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.image != oldWidget.image) {
      _resolveImage();
    }
  }

  @override
  void reassemble() {
    _resolveImage(); // in case the image cache was flushed
    super.reassemble();
  }

  void _resolveImage() {
    final ImageStream newStream =
        widget.image.resolve(createLocalImageConfiguration(context));
    assert(newStream != null);
    _updateSourceStream(newStream);
  }

  void _handleImageFrame(ImageInfo imageInfo, bool synchronousCall) {
    setState(() => _imageInfo = imageInfo);
  }

  // Updates _imageStream to newStream, and moves the stream listener
  // registration from the old stream to the new stream (if a listener was
  // registered).
  void _updateSourceStream(ImageStream newStream) {
    if (_imageStream?.key == newStream?.key) return;

    if (_isListeningToStream) _imageStream.removeListener(_imageListener);

    _imageStream = newStream;
    if (_isListeningToStream) _imageStream.addListener(_imageListener);
  }

  void _listenToStream() {
    if (_isListeningToStream) return;
    _imageStream.addListener(_imageListener);
    _isListeningToStream = true;
  }

  void _stopListeningToStream() {
    if (!_isListeningToStream) return;
    _imageStream.removeListener(_imageListener);
    _isListeningToStream = false;
  }

  @override
  Widget build(BuildContext context) {
    if (_imageInfo != null) {
      return CustomPaint(
        painter: _PageTurnEffect(
          amount: widget.amount,
          image: _imageInfo.image,
          backgroundColor: widget.backgroundColor,
        ),
        size: Size.infinite,
      );
    } else {
      return const SizedBox();
    }
  }
}

class _PageTurnEffect extends CustomPainter {
  _PageTurnEffect({
    @required this.amount,
    @required this.image,
    this.backgroundColor,
    this.radius = 0.25,
  })  : assert(amount != null && image != null && radius != null),
        super(repaint: amount);

  final Animation<double> amount;
  final ui.Image image;
  final Color backgroundColor;
  final double radius;

  @override
  void paint(ui.Canvas canvas, ui.Size size) {
    final pos = amount.value;
    final movX = (1.0 - pos) * 0.85;
    final calcR = (movX < 0.20) ? radius * movX * 5 : radius;
    final wHRatio = 1 - calcR;
    final hWRatio = image.height / image.width;
    final hWCorrection = (hWRatio - 1.0) / 2.0;

    final w = size.width.toDouble();
    final h = size.height.toDouble();
    final c = canvas;
    final shadowXf = (wHRatio - movX);
    final shadowSigma =
        Shadow.convertRadiusToSigma(8.0 + (32.0 * (1.0 - shadowXf)));
    final pageRect = Rect.fromLTRB(0.0, 0.0, w * shadowXf, h);
    if (backgroundColor != null) {
      c.drawRect(pageRect, Paint()..color = backgroundColor);
    }
    c.drawRect(
      pageRect,
      Paint()
        ..color = Colors.black54
        ..maskFilter = MaskFilter.blur(BlurStyle.outer, shadowSigma),
    );

    final ip = Paint();
    for (double x = 0; x < size.width; x++) {
      final xf = (x / w);
      final v = (calcR * (math.sin(math.pi / 0.5 * (xf - (1.0 - pos)))) +
          (calcR * 1.1));
      final xv = (xf * wHRatio) - movX;
      final sx = (xf * image.width);
      final sr = Rect.fromLTRB(sx, 0.0, sx + 1.0, image.height.toDouble());
      final yv = ((h * calcR * movX) * hWRatio) - hWCorrection;
      final ds = (yv * v);
      final dr = Rect.fromLTRB(xv * w, 0.0 - ds, xv * w + 1.0, h + ds);
      c.drawImageRect(image, sr, dr, ip);
    }
  }

  @override
  bool shouldRepaint(_PageTurnEffect oldDelegate) {
    return oldDelegate.image != image ||
        oldDelegate.amount.value != amount.value;
  }
}
