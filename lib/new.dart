import 'package:flutter/material.dart';

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News...'),
      ),
      body: ListView(children: const [
        Image(image: AssetImage('images/food.jpg')),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15, right: 15, left: 15),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet nulla felis. Nam eu imperdiet velit. Integer non sem dolor. Etiam eget ante vitae metus placerat accumsan a sed justo. Quisque posuere, nisi eget semper tempor, dui est ornare magna, nec lacinia quam risus sit amet mauris. Fusce sodales odio sit amet condimentum elementum. Mauris commodo ex non elit dictum, lobortis molestie lorem sollicitudin. Pellentesque dapibus dignissim quam, non efficitur dui. Duis tincidunt eu ipsum sit amet tincidunt. Nulla at lectus nec velit iaculis fermentum vitae non neque. Nulla blandit eget turpis sed lacinia. In non sem ac velit porttitor vulputate non quis ligula. Donec porta, arcu eget ullamcorper finibus, ligula elit malesuada diam, ut pretium ex ipsum vitae libero. Sed faucibus blandit mi non tristique. Integer ut varius lorem. Quisque laoreet ut metus ac malesuada. Morbi nec tellus vel mi fermentum bibendum. Nulla accumsan dui non risus fringilla, eu aliquet lectus dignissim. Curabitur consequat nunc ut purus pellentesque pretium. Vestibulum et nisl varius, commodo metus eu, pellentesque enim. Sed faucibus, sem sit amet mattis malesuada, nisi sapien vehicula sem, sit amet semper turpis lorem a massa. Donec venenatis dapibus leo in tincidunt. Nullam velit nunc, fringilla porta tincidunt nec, congue ut eros. Nulla varius ullamcorper mattis. Donec non diam quam. Aliquam ullamcorper neque risus, vel gravida nunc laoreet ac. Ut tincidunt pharetra nisi, eu accumsan velit commodo ut. Vivamus nisl est, pharetra a pharetra id, pharetra sed leo. Quisque semper volutpat bibendum. Ut nec arcu non arcu maximus scelerisque. Duis scelerisque tortor vitae luctus molestie. Suspendisse in mollis mi, sed malesuada tortor. Integer at justo at erat pulvinar viverra. Suspendisse potenti. Nullam et accumsan nibh. Donec rhoncus magna felis, maximus scelerisque magna hendrerit ut. Quisque non efficitur neque, ac ultrices orci. Aliquam eget nulla et risus sagittis feugiat. Sed nec ligula vitae est cursus tempus. Phasellus lacinia arcu sit amet orci aliquet gravida. Morbi elementum at nisl nec convallis.'),
        )
      ]),
      backgroundColor: Colors.white,
    );
  }
}
