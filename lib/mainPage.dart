import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.all(30.0),
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: const [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          SizedBox(
            width: 0,
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Icon(
              Icons.menu,
              size: 30,
            ),
          ),
          SizedBox(
            width: 0,
          ),
        ],
        flexibleSpace: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 100, top: 90),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Delicious',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Food',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottom: const PreferredSize(
            child: Text(''), preferredSize: Size.fromHeight(120)),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SizedBox(
            width: double.infinity,
            // color: Colors.lightGreen,
            child: Column(
              children: const [
                RowItems(
                    dishImage: 'salmon_bowl.jpg',
                    dishName: 'Salmon bowl',
                    dishPrice: '19'),
                SizedBox(
                  height: 5,
                ),
                RowItems(
                    dishImage: 'spring_bowl.jpg',
                    dishName: 'Spring bowl',
                    dishPrice: '29'),
                SizedBox(
                  height: 5,
                ),
                RowItems(
                    dishImage: 'avocado_bowl.jpg',
                    dishName: 'Avocado bowl',
                    dishPrice: '20'),
                SizedBox(
                  height: 5,
                ),
                RowItems(
                    dishImage: 'berry_bowl.jpg',
                    dishName: 'Berry bowl',
                    dishPrice: '25'),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Color.fromARGB(255, 189, 255, 255),
        items: const [
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart,),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
        ),
        onPressed: () {},
        child: const Text(
          'Checkout',
          style: TextStyle(),
        ),
      ),
    );
  }
}

class RowItems extends StatelessWidget {
  final String dishImage;
  final String dishName;
  final String dishPrice;

  const RowItems({
    Key? key,
    required this.dishImage,
    required this.dishName,
    required this.dishPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 80,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/$dishImage',
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dishName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '\$$dishPrice',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Icon(
          Icons.add,
          size: 30,
        ),
      ],
    );
  }
}
