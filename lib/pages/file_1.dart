import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List L3 = [];
  int sum = 0;
  List<int> L4 = [];
  DateTime _currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.house_fill,
                  size: 24,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search, size: 24),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart, size: 24),
                label: "Cart",
              ),
            ],
          ),
          tabBuilder: (context, i) {
            switch (i) {
              case 0:
                return SafeArea(
                  child: CustomScrollView(
                    slivers: [
                      const CupertinoSliverNavigationBar(

                        largeTitle: Text(

                          "Cupertino Store",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SliverFillRemaining(
                        child: ListView.builder(
                          itemCount: L1.length,
                          itemBuilder: (context, i) => CupertinoListTile(
                            leading: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  image: DecorationImage(
                                      image: NetworkImage("${L1[i].Url}"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            title: Text(
                              "${L1[i].Name}",
                              style: const TextStyle(fontSize: 17),
                            ),
                            subtitle: Text(
                              "\$${L1[i].price}",
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            trailing: GestureDetector(
                                onTap: () {
                                  L3.add(L1[i]);
                                  L4.add(L1[i].price!);
                                },
                                child: const Icon(CupertinoIcons.add_circled)),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              case 1:
                return SafeArea(
                  child: CustomScrollView(
                    slivers: [
                      CupertinoSliverNavigationBar(
                          largeTitle: Row(
                            children: [
                              Container(
                                height: 45,
                                width: 330,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      CupertinoIcons.search,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Shir.....",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 210,
                                    ),
                                    Icon(
                                      CupertinoIcons.clear_thick_circled,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                      SliverFillRemaining(
                        child: ListView.builder(
                          itemCount: L2.length,
                          itemBuilder: (context, i) => CupertinoListTile(
                            leading: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  image: DecorationImage(
                                      image: NetworkImage("${L2[i].Url}"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            title: Text(
                              "${L2[i].Name}",
                              style: const TextStyle(fontSize: 17),
                            ),
                            subtitle: Text(
                              "\$${L2[i].price}",
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            trailing: GestureDetector(
                                onTap: () {
                                  L3.add(L1[i]);
                                  L4.add(L1[i].price!);
                                },
                                child: const Icon(CupertinoIcons.add_circled)),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              case 2:
                return SafeArea(
                  child: CustomScrollView(
                    slivers: [
                      const CupertinoSliverNavigationBar(
                        largeTitle: Text(
                          "Shopping Cart",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SliverFillRemaining(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              CupertinoFormSection(
                                children: [
                                  CupertinoFormRow(
                                    child: CupertinoTextFormFieldRow(
                                      placeholder: "Name",
                                      padding: EdgeInsets.zero,
                                      prefix: const Icon(CupertinoIcons.person,
                                          color: Colors.grey),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),
                                  ),
                                  CupertinoFormRow(
                                    child: CupertinoTextFormFieldRow(
                                      placeholder: "Email",
                                      prefix: const Icon(CupertinoIcons.mail_solid,
                                          color: Colors.grey),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                  CupertinoFormRow(
                                    child: CupertinoTextFormFieldRow(
                                      placeholder: "Location",
                                      prefix: const Icon(
                                        CupertinoIcons.location_solid,
                                        color: Colors.grey,
                                      ),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 150,
                                width: 300,
                                child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.dateAndTime,
                                  initialDateTime: _currentDate,
                                  minimumYear: 2000,
                                  maximumYear: 2021,
                                  use24hFormat: false,
                                  onDateTimeChanged: (val) {
                                    setState(
                                          () {
                                        _currentDate = val;
                                      },
                                    );
                                  },
                                ),
                              ),
                              Container(),
                              Container(
                                height: 240,
                                padding: const EdgeInsets.only(top: 10),
                                child: ListView.builder(
                                  itemCount: L3.length,
                                  itemBuilder: (context, i) =>
                                      CupertinoListTile(
                                        leading: Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              image: DecorationImage(
                                                  image:
                                                  NetworkImage("${L3[i].Url}"),
                                                  fit: BoxFit.fill),
                                              borderRadius:
                                              BorderRadius.circular(6)),
                                        ),
                                        title: Text(
                                          "${L3[i].Name}",
                                          style: const TextStyle(fontSize: 17),
                                        ),
                                        subtitle: Text(
                                          "\$${L3[i].price}",
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                        trailing: const Text(""),
                                      ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Total : \$$sum ",
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
            }
            return Container();
          },
        ),
      ),
    );
  }
}

class Listing {
  String? Url, Name;
  int? price;

  Listing({this.Url, this.Name, this.price});
}

List<Listing> L1 = [
  Listing(
      Url: "https://freepikpsd.com/media/2019/10/menswear-png.png",
      Name: "Shirt",
      price: 100),
  Listing(
      Url:
      "https://cdn.imgbin.com/11/4/0/imgbin-aviator-sunglasses-australia-polaroid-eyewear-carrera-su nglasses-gucci-TBsFgvrvmtiGFpjj0MQpv67Pp.jpg",
      Name: "Sunglasses",
      price: 50),
  Listing(
      Url: "https://pngimg.com/uploads/belt/belt_PNG9579.png",
      Name: "Whitney Belt",
      price: 35),
  Listing(
      Url:
      "https://i.pinimg.com/originals/f1/34/88/f13488a16a663e67856040020e07a1fb.png",
      Name: "Gold Chain",
      price: 900),
  Listing(
      Url:
      "https://www.vhv.rs/dpng/d/605-6056336_fastrack-college-bags-for-boys-hd-png-download.png",
      Name: "Fastrack Bag",
      price: 150),
  Listing(
      Url: "https://pngimg.com/uploads/running_shoes/running_shoes_PNG5816.png",
      Name: "Nike Running Shoes",
      price: 200),
  Listing(
      Url: "https://pngimg.com/uploads/leather_jacket/leather_jacket_PNG35.png",
      Name: "Lather Jacket",
      price: 130),
  Listing(
      Url:
      "https://www.kindpng.com/picc/m/42-425665_nike-true-statement-hat-hd-png-download.png",
      Name: "Nike Cap",
      price: 70),
  Listing(
      Url:
      "https://purepng.com/public/uploads/large/purepng.com-sockssockscovering-the-anklemattedani malhairdesign-142152639836805ad5.png",
      Name: "Socks",
      price: 20),
  Listing(
      Url:
      "https://cdn.shopify.com/s/files/1/0368/4449/products/Bracelet_17_300x300.png",
      Name: "Bracelet",
      price: 15),
  Listing(
      Url:
      "https://www.nicepng.com/png/detail/15-154351_watches-png-image-watch-png-for-picsart.png ",
      Name: "Torgoen Watch",
      price: 145),
  Listing(
      Url: "https://pngimg.com/uploads/iphone_11/iphone_11_PNG38.png",
      Name: "iPhone 11",
      price: 500),
];
List L2 = [
  Listing(
      Url: "https://freepikpsd.com/media/2019/10/menswear-png.png",
      Name: "Shirt",
      price: 100),
  Listing(
      Url:
      "https://cdn.imgbin.com/11/4/0/imgbin-aviator-sunglasses-australia-polaroid-eyewear-carrera-su nglasses-gucci-TBsFgvrvmtiGFpjj0MQpv67Pp.jpg",
      Name: "Sunglasses",
      price: 50),
  Listing(
      Url: "https://pngimg.com/uploads/running_shoes/running_shoes_PNG5816.png",
      Name: "Nike Running Shoes",
      price: 200),
  Listing(
      Url:
      "https://purepng.com/public/uploads/large/purepng.com-sockssockscovering-the-anklemattedani malhairdesign-142152639836805ad5.png",
      Name: "Socks",
      price: 20),
];
