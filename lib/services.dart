import 'package:flutter/material.dart';
import 'package:smacty/widgets/scard.dart';

class Services extends StatefulWidget {
  const Services({
    Key? key,
  }) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool _searchBoolean = false;
  List<int> _searchIndexList = [];

  final List<String> _list = [
    'Electrician', //
    'Plumber', //
    'IT Specialist', //
    'Cleaner', //
    'Photographer', //
    'Painter' //
  ];

  final List<String> _list2 = [
    'images/icons/electrician.png', //
    'images/icons/plumber.png', //
    'images/icons/coder.png', //
    'images/icons/cleaner.png', //
    'images/icons/photographer.png', //
    'images/icons/docorator.png' //
  ];
  final List<MaterialColor> _list3 = [
    Colors.indigo, //
    Colors.blue, //
    Colors.red, //
    Colors.blue, //
    Colors.yellow, //
    Colors.green //
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
            title:
                !_searchBoolean ? const Text('Services') : _searchTextField(),
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
