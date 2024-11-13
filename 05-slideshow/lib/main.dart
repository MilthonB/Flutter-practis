import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:slideshow/srcs/model/slider_model.dart';
import 'package:slideshow/srcs/widget/slider_show.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            Expanded(child: CreateColumSlider()),
            Expanded(child: CreateColumSlider()),
          ],
        ),
      )),
    );
  }
}

class CreateColumSlider extends StatelessWidget {
  const CreateColumSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliderShow(
      puntosArriba: false,
      colorPrimario: Colors.red,
      colorsecundario: Colors.black,
      bulletSecundario: 12,
      bullterPrimario: 20,
      slides: [
        SvgPicture.asset('assets/images/1.svg'),
        SvgPicture.asset('assets/images/2.svg'),
        SvgPicture.asset('assets/images/3.svg'),
        SvgPicture.asset('assets/images/4.svg'),
        SvgPicture.asset('assets/images/5.svg'),
        const Center(child: Text('Hola mundo mundial'))
      ],
    );
  }
}

class _Dots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_Dot(0), _Dot(1), _Dot(2)],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final int index;

  const _Dot(this.index);

  @override
  Widget build(BuildContext context) {
    final viewIndex = Provider.of<SliderModel>(context).currentPage;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: 12,
      height: 12,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: (viewIndex >= index - 0.5 && viewIndex < index + 0.5)
              ? Colors.blue
              : Colors.grey,
          // color: Colors.grey,
          shape: BoxShape.circle),
    );
  }
}

class _Slides extends StatefulWidget {
  @override
  State<_Slides> createState() => _SlidesState();
}

class _SlidesState extends State<_Slides> {
  final pageviewcontroller = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageviewcontroller.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageviewcontroller.addListener(() {
      // Provider.of<SliderModel>(context,listen: false).currentPage = pageviewcontroller.page!;
      Provider.of<SliderModel>(context, listen: false).currentPage =
          pageviewcontroller.page!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        // es para agrupar imagenes y mostrarlas con un movimiento de dedo
        controller: pageviewcontroller,
        children: const [
          _Slide('assets/images/1.svg'),
          _Slide('assets/images/2.svg'),
          _Slide('assets/images/3.svg'),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String svg;
  const _Slide(this.svg);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(30),
      child: SvgPicture.asset(svg),
    );
  }
}
