import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: _Title()
        // body: _ListTask()
        body: Stack(
          children: [
            _MainScroll(),
            Positioned(
              bottom: -10,
              right: 0,
              child: _ButtonNewList()
            )
          ],
        )
      ),
    );
  }
}


class _ButtonNewList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal
      ),  
    onPressed: () {
      
    }, child: Text('Create New List', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 3),));
  }
}

class _MainScroll extends StatelessWidget {
  

  final items = [
    _ListItem(title: 'Orange', color: Colors.orange[200]!, ),
    _ListItem(title: 'Family', color: Colors.red[200]!, ),
    _ListItem(title: 'Subscriptions', color: Colors.blue[200]!, ),
    _ListItem(title: 'Books', color: Colors.green[200]!, ),
    _ListItem(title: 'Orange', color: Colors.amber[200]!, ),
    _ListItem(title: 'Family', color: Colors.blueGrey[200]!, ),
    _ListItem(title: 'Subscroptions', color: Colors.teal[200]!, ),
    _ListItem(title: 'Books', color: Colors.pink[200]!, ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // const SliverAppBar(
        //   floating: true,
        //   elevation: 0,
        //   backgroundColor: Colors.red,
        //   title: Text('hola mundo'),
        // ),

        SliverPersistentHeader(
          floating: true,
          delegate: _SliverCustomHeaderDelegate(
            minheight: 185,
            maxheight: 200,
            child: Container(
              color: Colors.white,
              child: _Title()
            )
          )
        ),

        SliverList(
          delegate: SliverChildListDelegate([
            ...items,
            SizedBox(height: 100,)

          ]
          )
        )
      ],
    );
  }
}

class _SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {

  final double minheight;
  final double maxheight;
  final Widget child;

  _SliverCustomHeaderDelegate({required this.minheight, required this.maxheight, required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  double get maxExtent => (minheight> maxheight) ? minheight: maxheight;

  @override
  double get minExtent => minheight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return maxheight != oldDelegate.maxExtent || minheight != oldDelegate.minExtent;
  }
}

class _ListTask extends StatelessWidget {

  final items = [
    _ListItem(title: 'Orange', color: Colors.orange[200]!, ),
    _ListItem(title: 'Family', color: Colors.red[200]!, ),
    _ListItem(title: 'Subscriptions', color: Colors.blue[200]!, ),
    _ListItem(title: 'Books', color: Colors.green[200]!, ),
    _ListItem(title: 'Orange', color: Colors.amber[200]!, ),
    _ListItem(title: 'Family', color: Colors.blueGrey[200]!, ),
    _ListItem(title: 'Subscroptions', color: Colors.teal[200]!, ),
    _ListItem(title: 'Books', color: Colors.pink[200]!, ),
  ];
   _ListTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => items[index],
    );
  }
}


class _Title extends StatelessWidget {
  
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: const Text('New', style: TextStyle(color: Colors.blueGrey, fontSize: 50),),
        ),

        Stack(
          children: [
            const SizedBox(width: 100,),
            Positioned(
              bottom: 19,
              child: Container(
                width: 120,
                height: 8,
                color: Colors.red[100],
              ),
            ),
            Container(
              child: Text('List', style: TextStyle(color: Colors.red[400], fontSize: 50, fontWeight: FontWeight.bold),),
            ),
          ],
        )
      ],
    );
  }
}



class _ListItem extends StatelessWidget {
  final Color color;
  final String title;
  const _ListItem({
    super.key, required this.color, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30)
      ),
      padding: const EdgeInsets.all(30),
      alignment: Alignment.centerLeft,
    child: Text(title, style: TextStyle( color: Colors.white, fontSize: 20 ,fontWeight: FontWeight.bold),),
    );
  }
}
