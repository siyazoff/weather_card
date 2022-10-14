import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OpenSans-Regular'),
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: Text(
            'Weather Forecast',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                _textField(),
                SizedBox(
                  height: 16,
                ),
                _cityDetail(),
                SizedBox(
                  height: 30,
                ),
                _temperatureDetail(),
                SizedBox(
                  height: 40,
                ),
                _extraDetail(),
                SizedBox(
                  height: 40,
                ),
                _text7day(),
                Divider(
                  color: Colors.orangeAccent,
                ),
                Container(
                  child: _myList(),
                  height: 130,
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Row _textField() {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Icon(
          Icons.search,
          size: 24,
        ),
      ),
      SizedBox(width: 4.0),
      Expanded(
          flex: 8,
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Enter City Name",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  width: 3,
                  color: Colors.orangeAccent,
                ))),
          ))
    ],
  );
}

Column _cityDetail() {
  return Column(
    children: [
      Text(
        'Kazakhstan, Astana, KZ',
        style: TextStyle(
          fontSize: 32,
          color: Colors.white,
        ),
      ),
      Text(
        'Friday, March 20, 2022',
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Row _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        Icons.wb_sunny,
        size: 80,
        color: Colors.white,
      ),
      SizedBox(
        width: 12,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '14 °F',
            style: TextStyle(
              fontSize: 55,
              color: Colors.white,
            ),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      )
    ],
  );
}

Row _extraDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        child: Column(
          children: [
            Icon(Icons.ac_unit, size: 30, color: Colors.white),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              'km/hr',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Icon(Icons.ac_unit, size: 30, color: Colors.white),
            Text(
              '17',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              'km/hr',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Icon(Icons.ac_unit, size: 30, color: Colors.white),
            Text(
              '20',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              'km/hr',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      )
    ],
  );
}

Container _text7day() {
  return Container(
    child: Text(
      '7 day weather forecast',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
    ),
  );
}

Widget _myList() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Container(
        width: 160,
        decoration: BoxDecoration(
          color: Color.fromARGB(76, 255, 255, 255),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Friday',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '6 °F',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Icon(
                  Icons.wb_sunny,
                  size: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(width: 16),
      Container(
        width: 160,
        decoration: BoxDecoration(
          color: Color.fromARGB(76, 255, 255, 255),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Saturday',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '3 °F',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Icon(
                  Icons.wb_cloudy,
                  size: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(width: 16),
      Container(
        width: 160,
        decoration: BoxDecoration(
          color: Color.fromARGB(76, 255, 255, 255),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sunday',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0 °F',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Icon(
                  Icons.ac_unit,
                  size: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(width: 16),
      Container(
        width: 160,
        decoration: BoxDecoration(
          color: Color.fromARGB(76, 255, 255, 255),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Monday',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '14 °F',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Icon(
                  Icons.wb_sunny,
                  size: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(width: 16),
      Container(
        width: 160,
        decoration: BoxDecoration(
          color: Color.fromARGB(76, 255, 255, 255),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Tuesday',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '12 °F',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Icon(
                  Icons.wb_sunny,
                  size: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(width: 16),
      Container(
        width: 165,
        decoration: BoxDecoration(
          color: Color.fromARGB(76, 255, 255, 255),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Wednesday',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '8 °F',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Icon(
                  Icons.wb_cloudy_sharp,
                  size: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(width: 16),
      Container(
        width: 160,
        decoration: BoxDecoration(
          color: Color.fromARGB(76, 255, 255, 255),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Thursday',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '-2 °F',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Icon(
                  Icons.ac_unit,
                  size: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
