
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Color baseColor = Color(0xFFF2F2F2);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: baseColor,

        body: Favourites(),
      ),
    );
  }
}

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: drawer_item(),
        backgroundColor: Color(0XffF2F6F9),
        appBar: AppBar(
          leading: Icon(
            Icons.sort,
            color: Colors.black,
          ),
          title: Text(
            'My Favourites',
            style: TextStyle(color: Color(0Xff556B78)),
          ),
          centerTitle: true,
          backgroundColor: Color(0XffF2F6F9),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: box_decoration(),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Food',
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(Icons.search),
                        )),
                  ),
                ),
                Row(
                  children: [
                    All_btn(context),
                    Non_veg_btn(context),
                    veg_btn(context),
                    breakfast_btn(context),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Stack(
                                    children: [

                                      Container(
                                        decoration: box_decoration(),
                                        width: MediaQuery.of(context).size.width * 0.42,
                                        height: MediaQuery.of(context).size.height * 0.28,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8),
                                              child: Stack(
                                                children: [
                                                  Center(
                                                    child: Container(
                                                      width: MediaQuery.of(context).size.width * 0.38,
                                                      height: MediaQuery.of(context).size.height * 0.19,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(20),
                                                      ),
                                                      child: Image.network('https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 12, top: 3),
                                                        child: Icon(
                                                          Icons.cancel,
                                                          color: Color(0XffE04046),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 12, top: 3),
                                                        child: Icon(
                                                          Icons.favorite,
                                                          color: Color(0XffE04046),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 94, left: 13),
                                                    child: Icon(
                                                      Icons.add_comment_outlined,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 6, left: 14),
                                                  child: Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Text(
                                                        'Beef Burger',
                                                        style:
                                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 8, left: 12),
                                                  child: Text(
                                                    '*',
                                                    style: TextStyle(color: Colors.red, fontSize: 18),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                    top: 3,
                                                  ),
                                                  child: Text(' 4.4'),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 4),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8),
                                                    child: Container(
                                                        child: Icon(
                                                          Icons.attach_money_rounded,
                                                          size: 15,
                                                          color: Color(0XffD66E6E),
                                                        )),
                                                  ),
                                                  Text('26',
                                                      style: TextStyle(
                                                          color: Color(0XffD66E6E), fontWeight: FontWeight.bold)),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('American', style: TextStyle(fontSize: 12)),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 2),
                                                    child: Text('.',
                                                        style:
                                                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 2),
                                                    child: Text('Italian',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        )),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )

                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 8,
                              ),

                              Container(
                                decoration: box_decoration(),
                                width: MediaQuery.of(context).size.width * 0.42,
                                height: MediaQuery.of(context).size.height * 0.28,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: Container(
                                                width: MediaQuery.of(context).size.width * 0.38,
                                                height: MediaQuery.of(context).size.height * 0.19,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child: Image.network('https://images.unsplash.com/photo-1449785227466-10687c63e194?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80')
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 12, top: 3),
                                                child: Icon(
                                                  Icons.cancel,
                                                  color: Color(0XffE04046),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 12, top: 3),
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Color(0XffE04046),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 94, left: 13),
                                            child: Icon(
                                              Icons.add_comment_outlined,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 6, left: 14),
                                          child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Pizza',
                                                style:
                                                TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8, left: 12),
                                          child: Text(
                                            '*',
                                            style: TextStyle(color: Colors.red, fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 3,
                                          ),
                                          child: Text(' 4.4'),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Container(
                                                child: Icon(
                                                  Icons.attach_money_rounded,
                                                  size: 15,
                                                  color: Color(0XffD66E6E),
                                                )),
                                          ),
                                          Text('26',
                                              style: TextStyle(
                                                  color: Color(0XffD66E6E), fontWeight: FontWeight.bold)),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5),
                                            child: Text('American', style: TextStyle(fontSize: 12)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: Text('.',
                                                style:
                                                TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: Text('Italian',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                )),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )

                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015,
                              ),
                              Column(
                                children: [
                                  Stack(
                                    children: [


                                      Container(
                                        decoration: box_decoration(),
                                        width: MediaQuery.of(context).size.width * 0.42,
                                        height: MediaQuery.of(context).size.height * 0.28,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8),
                                              child: Stack(
                                                children: [
                                                  Center(
                                                    child: Container(
                                                        width: MediaQuery.of(context).size.width * 0.38,
                                                        height: MediaQuery.of(context).size.height * 0.19,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(20),
                                                        ),
                                                        child:Image.network('https://media.istockphoto.com/photos/green-dollor-signs-with-ladders-picture-id1056724704?s=612x612')
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 12, top: 3),
                                                        child: Icon(
                                                          Icons.cancel,
                                                          color: Color(0XffE04046),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 12, top: 3),
                                                        child: Icon(
                                                          Icons.favorite,
                                                          color: Color(0XffE04046),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 94, left: 13),
                                                    child: Icon(
                                                      Icons.add_comment_outlined,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 6, left: 14),
                                                  child: Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Text(
                                                        'Dollor',
                                                        style:
                                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                                      )),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 8, left: 12),
                                                  child: Text(
                                                    '*',
                                                    style: TextStyle(color: Colors.red, fontSize: 18),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                    top: 3,
                                                  ),
                                                  child: Text(' 4.4'),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 4),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8),
                                                    child: Container(
                                                        child: Icon(
                                                          Icons.attach_money_rounded,
                                                          size: 15,
                                                          color: Color(0XffD66E6E),
                                                        )),
                                                  ),
                                                  Text('26',
                                                      style: TextStyle(
                                                          color: Color(0XffD66E6E), fontWeight: FontWeight.bold)),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('American', style: TextStyle(fontSize: 12)),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 2),
                                                    child: Text('.',
                                                        style:
                                                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 2),
                                                    child: Text('Italian',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        )),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )

                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),

                              Container(
                                decoration: box_decoration(),
                                width: MediaQuery.of(context).size.width * 0.42,
                                height: MediaQuery.of(context).size.height * 0.28,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: Container(
                                                width: MediaQuery.of(context).size.width * 0.38,
                                                height: MediaQuery.of(context).size.height * 0.19,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child: Image.network('https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 12, top: 3),
                                                child: Icon(
                                                  Icons.cancel,
                                                  color: Color(0XffE04046),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 12, top: 3),
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Color(0XffE04046),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 94, left: 13),
                                            child: Icon(
                                              Icons.add_comment_outlined,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 6, left: 14),
                                          child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Car',
                                                style:
                                                TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8, left: 12),
                                          child: Text(
                                            '*',
                                            style: TextStyle(color: Colors.red, fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 3,
                                          ),
                                          child: Text(' 4.4'),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Container(
                                                child: Icon(
                                                  Icons.attach_money_rounded,
                                                  size: 15,
                                                  color: Color(0XffD66E6E),
                                                )),
                                          ),
                                          Text('26',
                                              style: TextStyle(
                                                  color: Color(0XffD66E6E), fontWeight: FontWeight.bold)),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5),
                                            child: Text('American', style: TextStyle(fontSize: 12)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: Text('.',
                                                style:
                                                TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: Text('Italian',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                )),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )

                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container main_card_container(BuildContext context, String img) {
    return
      Container(
        decoration: box_decoration(),
        width: MediaQuery.of(context).size.width * 0.42,
        height: MediaQuery.of(context).size.height * 0.28,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.38,
                      height: MediaQuery.of(context).size.height * 0.19,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(img),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 3),
                        child: Icon(
                          Icons.cancel,
                          color: Color(0XffE04046),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, top: 3),
                        child: Icon(
                          Icons.favorite,
                          color: Color(0XffE04046),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 94, left: 13),
                    child: Icon(
                      Icons.add_comment_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 14),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Beef Burger',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 12),
                  child: Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 3,
                  ),
                  child: Text(' 4.4'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                        child: Icon(
                          Icons.attach_money_rounded,
                          size: 15,
                          color: Color(0XffD66E6E),
                        )),
                  ),
                  Text('26',
                      style: TextStyle(
                          color: Color(0XffD66E6E), fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('American', style: TextStyle(fontSize: 12)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text('.',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Text('Italian',
                        style: TextStyle(
                          fontSize: 12,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }

  BoxDecoration box_decoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white);
  }

  Stack sub_container_spicy_chicken(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.36,
            height: MediaQuery.of(context).size.height * 0.19,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.amber),
          ),
        ),
      ],
    );
  }

  // Stack sub_container_beef_burger(BuildContext context) {
  //   return null
  // }

  Padding breakfast_btn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6, top: 20, bottom: 6),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.26,
        height: MediaQuery.of(context).size.height * 0.05,
        child: MaterialButton(
          elevation: 0,
          color: Color(0XffE8E9EB),
          onPressed: () {},
          child: Text('Breakfast',
              style: TextStyle(color: Color(0Xff8F8F91), fontSize: 11)),
        ),
      ),
    );
  }

  Padding veg_btn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6, top: 20, bottom: 6),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.16,
        height: MediaQuery.of(context).size.height * 0.05,
        child: MaterialButton(
          elevation: 0,
          color: Color(0XffE8E9EB),
          onPressed: () {},
          child: Text(
            'Veg',
            style: TextStyle(color: Color(0Xff8F8F91), fontSize: 11),
          ),
        ),
      ),
    );
  }

  Padding Non_veg_btn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6, top: 20, bottom: 6),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.24,
        height: MediaQuery.of(context).size.height * 0.05,
        child: MaterialButton(
          elevation: 0,
          color: Color(0Xff234493),
          onPressed: () {},
          child: Text(
            'Non-Veg',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        ),
      ),
    );
  }

  Padding All_btn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6, top: 20, bottom: 6),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.14,
        height: MediaQuery.of(context).size.height * 0.05,
        child: MaterialButton(
          elevation: 0,
          color: Color(0XffE8E9EB),
          onPressed: () {},
          child: Text('All',
              style: TextStyle(fontSize: 11, color: Color(0Xff8F8F91))),
        ),
      ),
    );
  }
}


class drawer_item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Qaiser'),
            accountEmail: Text('qaiser@gmai.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('P'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourite'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Favourites()));
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Otp Design'),
            onTap: () {


            },
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
