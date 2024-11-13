import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
// import 'package:slideshow/srcs/model/slider_model.dart';

class SliderShow extends StatelessWidget {

  final List<Widget> slides;
  final bool puntosArriba;
  final Color colorPrimario;
  final Color colorsecundario;
  final double bullterPrimario;
  final double bulletSecundario;

  const SliderShow({
    super.key, 
    required this.slides, 
    this.puntosArriba =  false, 
    this.colorPrimario =Colors.blue, 
    this.colorsecundario = Colors.grey, 
    this.bullterPrimario = 12.0, 
    this.bulletSecundario = 12.0,
    }
  ); 

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          SliderShowModel(), // instancia unica y global para todas las ya sabes
      child: Center(
        child: Builder(
          builder: (context) {
            Provider.of<SliderShowModel>(context).colorPrimario = colorPrimario;
            Provider.of<SliderShowModel>(context).colorSecundario = colorsecundario;

            Provider.of<SliderShowModel>(context).bulletPrimario = bullterPrimario;
            Provider.of<SliderShowModel>(context).bulletSecundario = bulletSecundario;


            return StructureSlideShow(puntosArriba: puntosArriba, slides: slides);
          },
        )
      ),
    );
  }
}

class StructureSlideShow extends StatelessWidget {
  const StructureSlideShow({
    super.key,
    required this.puntosArriba,
    required this.slides,
  });

  final bool puntosArriba;
  final List<Widget> slides;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (puntosArriba) _Dots(slides.length),
        Expanded(
          child: _Slides( slides ),
        ),
        if (!puntosArriba) _Dots(slides.length),
          
        // _Dots(slides.length),
      ],
    );
  }
}

class _Dots extends StatelessWidget {
  final int totalSlides;

  const _Dots(this.totalSlides);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(totalSlides, (index) => _Dot(index),),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final int index;

  const _Dot(this.index);

  @override
  Widget build(BuildContext context) {
    final ssModel = Provider.of<SliderShowModel>(context);
    Color color;
    double tamanio;

    if( ssModel.currentPage >= index - 0.5 && ssModel.currentPage < index + 0.5 ){
      tamanio = Provider.of<SliderShowModel>(context).bulletPrimario;
      color = Provider.of<SliderShowModel>(context).colorPrimario;
    }else{
      tamanio = Provider.of<SliderShowModel>(context).bulletSecundario;
      color = Provider.of<SliderShowModel>(context).colorSecundario;
    }


    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: tamanio,
      height: tamanio,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: color,
          // color: Colors.grey,
          shape: BoxShape.circle),
    );
  }
}

class _Slides extends StatefulWidget {

  final List<Widget> slides;

  const _Slides(this.slides);
  @override
  State<_Slides> createState() => _SlidesState();
}

class _SlidesState extends State<_Slides> {
  final pageviewcontroller = PageController();

  @override
  void dispose() {
    super.dispose();
    pageviewcontroller.dispose();
  }

  @override
  void initState() {
    super.initState();
    pageviewcontroller.addListener(() {
      // Provider.of<SliderModel>(context,listen: false).currentPage = pageviewcontroller.page!;
      Provider.of<SliderShowModel>(context, listen: false).currentPage =
          pageviewcontroller.page!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        // es para agrupar imagenes y mostrarlas con un movimiento de dedo
        controller: pageviewcontroller,
        // children: const [
        //   _Slide('assets/images/1.svg'),
        //   _Slide('assets/images/2.svg'),
        //   _Slide('assets/images/3.svg'),
        // ],
        children: widget.slides.map( (slide) => _Slide(slide) ).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Widget slide;
  const _Slide(this.slide);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(30),
      child: slide,
    );
  }
}


class SliderShowModel with ChangeNotifier{
  double _currentPage = 0 ; // Propiedad activada 
  Color _colorPirmario = Colors.blue;
  Color _colorSecundario = Colors.grey;
  double _bulletPrimario = 12.0;
  double _bulletSecundario = 12.0;

  double get currentPage => _currentPage;

  set currentPage (  double currentPageA ){
    _currentPage = currentPageA;
    notifyListeners();
  }

  Color get colorPrimario => _colorPirmario;  
  set colorPrimario(Color color) {
    _colorPirmario = color;
  
  }

  set colorSecundario(Color color){
    _colorSecundario = color;

  }
  Color get colorSecundario => _colorSecundario;

  set bulletSecundario(double tamanio){
    _bulletSecundario = tamanio;

  }
  double get bulletSecundario => _bulletSecundario;

  set bulletPrimario(double tamanio){
    _bulletPrimario = tamanio;

  }
  double get bulletPrimario => _bulletPrimario;



}