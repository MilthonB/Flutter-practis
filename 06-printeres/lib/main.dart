import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => _MenuModel2(),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              PrinterestGrid(),
              _PinteresMenuLocation()
            ],
          ),
          // body: PinterestMenu(),
          // body: PrinterestGrid()
        ),
      ),
    );
  }
}

class _PinteresMenuLocation extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  final see = Provider.of<_MenuModel2>(context).see;
    final width =  MediaQuery.of(context).size.width;
    return Positioned(
      bottom: 30,
      child: SizedBox(
        width: width,
        child: Align(
          child: PinterestMenu(
            see: see,
            // backgroundColor: Colors.white,
            // activeColor: Colors.black,
            // inactiveColor: Colors.blueGrey,
          )
        ),
      ),
    );
  }
}


class PrinterestGrid extends StatefulWidget {

  @override
  State<PrinterestGrid> createState() => _PrinterestGridState();
}

class _PrinterestGridState extends State<PrinterestGrid> {
  final List items = List.generate(200, (index) => index,);

  final ScrollController  controller =  ScrollController();

  double initialValue = 0.0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  } 

  @override
  void initState() {
    controller.addListener(() {
      if( controller.offset > initialValue && controller.offset > 150){
          Provider.of<_MenuModel2>(context, listen: false).see = false;
      }else{
          Provider.of<_MenuModel2>(context, listen: false).see = true;
      }

      initialValue = controller.offset;
    },);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      controller: controller,
      // physics: ,
      crossAxisCount: 4,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _PrinteresItem(index: index,);
      },
      staggeredTileBuilder: (index) {
        return StaggeredTile.count(2, index.isEven ? 2 : 3);
      },
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}

class _PrinteresItem extends StatelessWidget {
  final int index;
  const _PrinteresItem({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('$index'),
        ),
      ),
    );
  }
}


class PinterestButton {
  final VoidCallback onPressd;
  final IconData icon;

  PinterestButton({required this.onPressd, required this.icon});
}


class PinterestMenu extends StatelessWidget {

    final bool see;
    final Color activeColor;
    final Color inactiveColor;
    final Color backgroundColor;

    final List <PinterestButton> items  = [

      PinterestButton(onPressd: () {print('Icon pie chart');}, icon: Icons.pie_chart),
      PinterestButton(onPressd: (){print("Icon searchh");}, icon: Icons.search),
      PinterestButton(onPressd: (){print("Icon notification");}, icon: Icons.notification_add),
      PinterestButton(onPressd: (){print("Icon supervised_user_circle");}, icon: Icons.supervised_user_circle),

    ];

  PinterestMenu({super.key, required this.see, this.activeColor = Colors.black, this.inactiveColor = Colors.blueGrey, this.backgroundColor =  Colors.white});



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _MenuModel(),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: (see) ? 1 : 0,
        child: Builder(
          builder: (context) {
            Provider.of<_MenuModel>(context).backgroundColor = backgroundColor;
            Provider.of<_MenuModel>(context).activeColor = activeColor;
            Provider.of<_MenuModel>(context).inactiveColor = inactiveColor;
            return _PinteresMenuBackGround(
              child: _MenueItem(menuItems: items),
            );
          }
        ),
      ),
    );
  }
}

class _PinteresMenuBackGround extends StatelessWidget {

  final _MenueItem child;  
  const _PinteresMenuBackGround({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor =  Provider.of<_MenuModel>(context).backgroundColor;
    return Container(
      child: child,
      width: 250,
      height: 60,
      decoration: BoxDecoration(
         color: backgroundColor,
         borderRadius: BorderRadius.all(Radius.circular(100)),
         boxShadow: [
            BoxShadow(
              color: Colors.black38,
              // offset: Offset(10,10),
              blurRadius: 10,
              spreadRadius: -5
            )
         ]
      ),
      // child: ,
    );
  }
}



class _MenueItem extends StatelessWidget {
  final List<PinterestButton> menuItems;
  const _MenueItem({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(menuItems.length, (index) => _PinterestMenuButton(index: index, item: menuItems[index]),),
    );
  }
}


class _PinterestMenuButton extends StatelessWidget {
  final int index;
  final PinterestButton item;
  const _PinterestMenuButton({super.key, required this.index, required this.item});

  @override
  Widget build(BuildContext context) {
    final itemSletect = Provider.of<_MenuModel>(context).itemSelected;
    final activeColor = Provider.of<_MenuModel>(context).activeColor;
    final inactiveColor = Provider.of<_MenuModel>(context).inactiveColor;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        Provider.of<_MenuModel>(context, listen: false).itemSelected = index;
        item.onPressd();
      },
      child: Container(
        child: Icon(item.icon, 
        size: (itemSletect == index) ? 30: 25, 
        color: (itemSletect == index) ? activeColor : inactiveColor,
      ),
      ),
    );
  }
}


class _MenuModel with ChangeNotifier{
  int _itemSelected = 0;
  Color _activeColor = Colors.black;
  Color _inactiveColor = Colors.blueGrey;
  Color _backgroundColor =  Colors.white;

  int get itemSelected => _itemSelected;

  set itemSelected(int index){
    _itemSelected = index;
    notifyListeners();
  }


  Color get activeColor => _activeColor;

  set activeColor(Color color){
    _activeColor = color;
    // notifyListeners();
  }

  Color get inactiveColor => _inactiveColor;

  set inactiveColor(Color color){
    _inactiveColor = color;
    // notifyListeners();
  }

  Color get backgroundColor => _backgroundColor;

  set backgroundColor(Color color){
    _backgroundColor = color;
    // notifyListeners();
  }
  

}


class _MenuModel2 with ChangeNotifier{

  bool _see  = true;

  bool get see => _see;

  set see(bool value){
    _see = value;
    notifyListeners();
  }

}