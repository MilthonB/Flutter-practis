import 'package:flutter/material.dart';
import 'package:shoes/src/helpers/helpers.dart';
import 'package:shoes/src/widgets/custom_widgets.dart';

class ShoePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    cambiarSttuusDark();
    return const Scaffold(
      // body: CustomeAppbar( texto: 'For you', )
      body: Column(
        children: [
          CustomeAppbar(texto: 'For you'),
          SizedBox(height: 20,),

          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [

                    Hero(
                      tag: 'shoe-1',
                      child: ShoeSizePreview()
                    ),
                    ShoeDescription(title: 'Nike Air Max 720', desc: 'The Nike Air Max 720 goes bigger than ever before with Nikes taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.'),

                ],
              ),
            )
          ),


          AddCartButton( monto: 180.0)

        ],
      ),

    );
  }
}