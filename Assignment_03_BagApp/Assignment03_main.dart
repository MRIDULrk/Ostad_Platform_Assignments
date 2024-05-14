
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(BagApp());
}

class BagApp extends StatefulWidget {
  const BagApp({super.key});

  @override
  State<BagApp> createState() => _BagAppState();
}

class _BagAppState extends State<BagApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int PullOverItem = 0;
  int TshirtItem = 0;
  int SportsDressItem = 0;
  late int PullOverPrice = 0;
  int TshirtPrice = 0;
  int SportsDressPrice = 0;
  int total = 0;
  int totalItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade50,

        title: Text('My Bag',
            style: TextStyle(
                fontSize: 36,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(

                  height: 150,
                  width: 100,
                decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pullover.jpg'),
                    fit: BoxFit.cover
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'PullOver',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            //'Total: ${_getTotalWaterConsumeCount()}',
                            'Color:Black  Size L ',
                            style: const TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (PullOverItem > 1) {
                                    PullOverItem--;
                                    PullOverPrice = 51 * PullOverItem;
                                    total= TshirtPrice+ PullOverPrice+SportsDressPrice;
                                  }

                                  setState(() {});
                                },
                                icon: Icon(Icons.minimize_rounded),
                              ),
                              Text(
                                "$PullOverItem",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  PullOverItem++;
                                  PullOverPrice = 51 * PullOverItem;
                                  total= TshirtPrice+ PullOverPrice+SportsDressPrice;

                                  setState(() {});
                                },
                                icon: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 150,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            size: 30,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "$PullOverPrice",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(

                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/tshirt.jpg'),
                        fit: BoxFit.cover
                    ),
                  ),


                ),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'T-shirt',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            //'Total: ${_getTotalWaterConsumeCount()}',
                            'Color:White Size XL ',
                            style: const TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (TshirtItem > 1) {
                                    TshirtItem--;
                                    TshirtPrice = 30 * TshirtItem;
                                    total= TshirtPrice+ PullOverPrice+SportsDressPrice;
                                  }

                                  setState(() {});
                                },
                                icon: Icon(Icons.minimize_rounded),
                              ),
                              Text(
                                "$TshirtItem",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  TshirtItem++;
                                  TshirtPrice = 30 * TshirtItem;
                                  total= TshirtPrice+ PullOverPrice+SportsDressPrice;

                                  setState(() {});
                                },
                                icon: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 150,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            size: 30,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "$TshirtPrice",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(

                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/sports.jpg'),
                        fit: BoxFit.cover
                    ),
                  ),


                ),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sports Dress',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            //'Total: ${_getTotalWaterConsumeCount()}',
                            'Color:Grey  Size M ',
                            style: const TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (SportsDressItem > 1) {
                                    SportsDressItem--;
                                    SportsDressPrice = 43 * SportsDressItem;
                                    total= TshirtPrice+ PullOverPrice+SportsDressPrice;
                                  }

                                  setState(() {});
                                },
                                icon: Icon(Icons.minimize_rounded),
                              ),
                              Text(
                                "$SportsDressItem",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  SportsDressItem++;
                                  SportsDressPrice = 43 * SportsDressItem;
                                  total= TshirtPrice+ PullOverPrice+SportsDressPrice;

                                  setState(() {});
                                },
                                icon: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 150,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            size: 30,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "$SportsDressPrice",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 100, 10, 10),
            child: Expanded(
              child: Container(
                height: 100,
                width: double.infinity,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Total:  ",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(

                            "$total",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                        totalItem = PullOverItem + TshirtItem + SportsDressItem;
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("Congratulations!"),
                              content: Text('You Have Added $totalItem Item in Your Bag',
                                  style: TextStyle(
                                      fontSize:16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Container(
                                    color: Colors.red,
                                    padding: const EdgeInsets.all(14),
                                    child: const Text("Okay",
                                        style: TextStyle(
                                            fontSize:14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            ),
                          );

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Checkout',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


