import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/src/helpers/helpers.dart';
import 'package:shoes/src/models/shoes_model.dart';
import 'package:shoes/src/widgets/custom_widgets.dart';
import 'package:animate_do/animate_do.dart';

class ShoesDescPage extends StatelessWidget {
  const ShoesDescPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    cambiarSttuusLigjt();

    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
                  Stack(
                    children: [
                      Hero(
                        tag: 'shoe-1',
                        child: ShoeSizePreview(screenFull: true,)
                      ),
                      Positioned(
                        top: 50,
                        child: FloatingActionButton(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          highlightElevation: 0,
                          child: Icon(Icons.chevron_left, color: Colors.white, size: 60,),
                          onPressed: () {
                            cambiarSttuusDark();
                            Navigator.pop(context);
                          },
                        )
                      )
                    ],
                    ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ShoeDescription(title: 'Nike Air Max 720', desc: 'The Nike Air Max 720 goes bigger than ever before with Nikes taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.'),
                  _MontoBuyNow(),
                  _ColorsAndMore(),
                  _ButtonLikeCartSettings()
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}

class _ButtonLikeCartSettings extends StatelessWidget {
  const _ButtonLikeCartSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ButtonShadow(icon: Icon(Icons.favorite, size: 25, color: Colors.red,),),
          _ButtonShadow(icon: Icon(Icons.settings, size: 25, color: Colors.grey.withOpacity(0.4),),),
          _ButtonShadow(icon: Icon(Icons.add_shopping_cart, size: 25, color: Colors.grey.withOpacity(0.4),),),
        ],
      ),
    );
  }
}

class _ButtonShadow extends StatelessWidget {
  final Icon icon;
  const _ButtonShadow({
    super.key, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: -5,
            blurRadius: 20,
            offset: Offset(0, 10)

          )
        ]
      ),
      child: icon,
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  const _ColorsAndMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: Row(
        children: [

          Expanded(
            child: Stack(
              children: [

           Positioned(child: _ButtonColor(color: Color(0xFFc6d642,),index: 4,img: 'assets/imgs/verde.png'),left: 90,), 
           Positioned(child: _ButtonColor(color: Color(0xFFffad29,),index: 3,img: 'assets/imgs/amarillo.png'),left: 60,), 
           Positioned(child: _ButtonColor(color: Color(0xFF2099f1,),index: 2,img: 'assets/imgs/azul.png'),left: 30,), 
          _ButtonColor(color: Color(0xFF354d56), index: 1,img: 'assets/imgs/negro.png'),

              ],
            )
          ),
          // Spacer(),
          ButtonOrange(text: 'More relared items', alto: 30, ancho: 170, color: Color(0xFFffc675),)
        ],
      ),
    );
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;
  final int index;
  final String img;
  const _ButtonColor({
    super.key, required this.color, required this.index, required this.img, 
  });

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final shoemodel = Provider.of<ShoesModel>(context, listen: false);
          shoemodel.assetImage = img;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            Text('\$180.0', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            const Spacer(),
            Bounce(
              delay: const Duration(seconds: 1),
              from: 8,
              child: ButtonOrange(text: 'By now', ancho: 120, alto: 40,))
          ],
        ),
      ),
    );
  }
}
