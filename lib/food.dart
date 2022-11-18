import 'package:flutter/material.dart';
import 'package:smacty/widgets/scard.dart';

class Food extends StatefulWidget {
  const Food({
    Key? key,
  }) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  bool _searchBoolean = false;
  List<int> _searchIndexList = [];

  final List<String> _list = [
    'KFC', //
    'EVOS', //
    'Max Way', //
    'Loook', //
    'Oqtepa Lavash', //
    'Burger King', //
  ];

  final List<String> _list2 = [
    'images/icons/kfc.png', //
    'images/icons/evos.png', //
    'images/icons/maxway.png', //
    'images/icons/loook.png', //
    'images/icons/oqtepa.png', //
    'images/icons/burger.png', //
  ];
  final List<MaterialColor> _list3 = [
    Colors.red, //
    Colors.orange, //
    Colors.yellow, //
    Colors.blue, //
    Colors.green, //
    Colors.red, //
  ];

  Widget _searchTextField() {
    return TextField(
      onChanged: (String s) {
        setState(() {
          _searchIndexList = [];
          for (int i = 0; i < _list.length; i++) {
            if (_list[i].contains(s)) {
              _searchIndexList.add(i);
            }
          }
        });
      },
      autofocus: true,
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      textInputAction: TextInputAction.search,
      decoration: const InputDecoration(
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.white60,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _searchListView() {
    return ListView.builder(
        itemCount: _searchIndexList.length,
        itemBuilder: (context, index) {
          index = _searchIndexList[index];
          return Card(child: ListTile(title: Text(_list[index])));
        });
  }

  Widget _defaultListView() {
    return ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return Scard(
            text: _list[index],
            icon: _list2[index],
            col: _list3[index],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: !_searchBoolean ? const Text('Food') : _searchTextField(),
            actions: !_searchBoolean
                ? [
                    IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          setState(() {
                            _searchBoolean = true;
                            _searchIndexList = [];
                          });
                        })
                  ]
                : [
                    IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _searchBoolean = false;
                          });
                        })
                  ]),
        body: !_searchBoolean ? _defaultListView() : _searchListView());
  }
}
