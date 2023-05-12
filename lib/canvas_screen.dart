import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:pdf/pdf.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DrawingState(),
      child: MaterialApp(
        title: 'My Drawing App',
        home: DrawingPage(),
      ),
    );
  }
}

class DrawingState with ChangeNotifier {
  // 필요한 상태값들을 정의합니다.
  Color selectedColor = Colors.black;
  double strokeWidth = 5.0;
  bool isEraserMode = false;

  // 색상을 선택합니다.
  void selectColor(Color color) {
    selectedColor = color;
    notifyListeners();
  }

  // 굵기를 조절합니다.
  void setStrokeWidth(double width) {
    strokeWidth = width;
    notifyListeners();
  }

  // 지우개 모드를 설정합니다.
  void setEraserMode(bool value) {
    isEraserMode = value;
    notifyListeners();
  }

  // 그리기를 완료합니다.
  void finishDrawing() {
    // TODO: 저장 로직을 구현합니다.
  }
}

class DrawingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Drawing App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [

    // 그림 관련 버튼들입니다.
    ButtonBar(
    alignment: MainAxisAlignment.center,
    children: [
    ElevatedButton(
    onPressed: () {
    showDialog(
    context: context,
    builder: (context) {
    return AlertDialog(
    title: Text('Select Color'),
    content: SingleChildScrollView(
    child: ColorPicker(
    pickerColor: Provider.of<DrawingState>(context).selectedColor,
    onColorChanged: (color) {
    Provider.of<DrawingState>(context, listen: false).selectColor(color);
    },
    showLabel: true,
    pickerAreaHeightPercent: 0.8,
    ),
    ),
    );
    },
    );
    },
    child: Text('C'),
    ),
    ElevatedButton(
    onPressed: () {
    showDialog(
    context: context,
    builder: (context) {
    return AlertDialog(
    title: Text('Select Stroke Width'),
    content: SingleChildScrollView(
    child: Slider(
    value: Provider.of<DrawingState>(context).strokeWidth,
    min: 1.0,
    max: 10.0,
    onChanged: (width) {
    Provider. of<DrawingState>(context, listen: false).setStrokeWidth(width);
    },
    ),
    ),
    );
    },
    );
    },
      child: Text('Width'),
    ),
      Switch(
        value: context.watch<DrawingState>().isEraserMode,
        onChanged: (value) {
          context.read<DrawingState>().setEraserMode(value);
        },
      ),
      ElevatedButton(
        onPressed: () {
          Provider.of<DrawingState>(context, listen: false).setEraserMode(true);
        },
        child: Text('Eraser'),
      ),
      ElevatedButton(
        onPressed: () {
          Provider.of<DrawingState>(context, listen: false).setEraserMode(false);
        },
        child: Text('Pen'),
      ),
    ],
    ),
              // 그림을 그리는 부분입니다.
              Expanded(
                child: Consumer<DrawingState>(
                  builder: (context, state, child) {
                    return GestureDetector(
                      onPanStart: (details) {
                        // TODO: 그리기 시작 로직을 구현합니다.
                      },
                      onPanUpdate: (details) {
                        // TODO: 그리기 중 로직을 구현합니다.
                      },
                      onPanEnd: (details) {
                        // TODO: 그리기 완료 로직을 구현합니다.
                        state.finishDrawing();
                      },
                      child: CustomPaint(
                        painter: MyPainter(
                          color: state.selectedColor,
                          strokeWidth: state.strokeWidth,
                          isEraserMode: state.isEraserMode,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
        ),
      ),
    );

  }
}

// 실제 그리기를 담당하는 클래스입니다.
class MyPainter extends CustomPainter {
  MyPainter({required this.color, required this.strokeWidth, required this.isEraserMode});

// 필요한 속성값들을 정의합니다.
  final Color color;
  final double strokeWidth;
  final bool isEraserMode;

// 실제로 그리는 로직입니다.
  @override
  void paint(Canvas canvas, Size size) {
// TODO: 그리기 로직을 구현합니다.
  }

// 이전 그리기를 지웁니다.
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

