import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/src/models/shoes_model.dart';
import 'package:shoes/src/pages/shoes_desc_page.dart';

class ShoeSizePreview extends StatelessWidget {
  final bool screenFull;
  const ShoeSizePreview({super.key, this.screenFull = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(!screenFull){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ShoesDescPage();
          },));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (screenFull) ? 5: 30, 
          vertical: (screenFull) ? 5 : 0
        ),
        child: Container(
          width: double.infinity,
          height: (!screenFull) ? 430: 410,
          decoration: BoxDecoration(
            color: const Color( 0xffFFCF53),
            borderRadius: 
            (!screenFull)
            ? BorderRadius.circular(50)
            : const BorderRadius.only(bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  
                                  
              )
          ),
          child:  Column(
            children: [
              //zapato con su sombra 
              _ShoesWithShadow(),
              if(!screenFull)
                  _ShoesSize()
            ],
          ),
        ),
      ),
    );
  }
}


class _ShoesSize extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final shoeModel = Provider.of<ShoesModel>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _SizeShoesBox(7, isSelected: (shoeModel.talla == 7),),
          _SizeShoesBox(7.5, isSelected: (shoeModel.talla == 7.5),),
          _SizeShoesBox(8, isSelected: (shoeModel.talla == 8),),
          _SizeShoesBox(8.5, isSelected: (shoeModel.talla == 8.5),),
          _SizeShoesBox(9, isSelected: (shoeModel.talla == 9),),
          _SizeShoesBox(9.5, isSelected: (shoeModel.talla == 9.5)),
        ],
      ),
    );
  }
}

class _SizeShoesBox extends StatelessWidget {

  final double size;
  final bool isSelected;

  const _SizeShoesBox(this.size, {this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    Color colorbox =  Colors.white;
    Color sizeNumbreColor =  Color(0XFFF1A23A); 

    final shoeModel = Provider.of<ShoesModel>(context);

    if(isSelected){
      colorbox = Colors.orange;
      sizeNumbreColor = Colors.white;
    }

    return GestureDetector(
      onTap: () {
        print(size);
        shoeModel.talla = size;
      },
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: colorbox,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0xfff1a23a),
              blurRadius: 10,
              offset: Offset(0,5)
            )
          ]
        ),
        child: Text('${size.toString().replaceAll('.0', '')}', style: TextStyle(
          color: sizeNumbreColor,
          fontSize: 16,
          fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}

class _ShoesWithShadow extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final photoShoes =  Provider.of<ShoesModel>(context);
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 0,
            child: _ShoeShadow()),
          Image(image: AssetImage(photoShoes.assetImage)),
        ],
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.6,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Color(0xffeaa14e),
              blurRadius: 40
            )
          ]
        ),
      ),
    );
  }
}