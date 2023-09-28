import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cart/proudect_model.dart';
import 'package:cart/widgets/runing_add.dart';
import 'package:cart/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class MainPage1 extends StatefulWidget {
  const MainPage1({Key? key}) : super(key: key);

  @override
  State<MainPage1> createState() => _MainPage1State();
}

class _MainPage1State extends State<MainPage1> {
  bool isSwitchedOn = false;
  int _currentIndex = 0;
  List<ImgModel> imgModelList = [
    ImgModel(16955,
        imgUrl: "https://5.imimg.com/data5/IU/UI/MY-38672683/4-500x500.jpg",
        title12: "Hikvision Cameras set ",
        title21: "8 channel or pay 16955+25coin"),
    ImgModel(1250,
        imgUrl:
            'https://th.bing.com/th/id/OIP.r0QQvCh1OatETTruC7blIgHaHa?pid=ImgDet&rs=1',
        title21: 'pay 16955+25coin',
        title12: 'hikvision camera'),
    ImgModel(30000,
        imgUrl:
            "https://specificationsplus.com/wp-content/uploads/2022/06/Nothing-phone-2-Specifications-Plus-600x600.jpg",
        title21: '27900',
        title12: 'nothing phone (1)black'),
    ImgModel(16955,
        imgUrl: "https://5.imimg.com/data5/IU/UI/MY-38672683/4-500x500.jpg",
        title12: "Hikvision Cameras set ",
        title21: "8 channel or pay 16955+25coin"),
    ImgModel(1250,
        imgUrl:
            'https://th.bing.com/th/id/OIP.r0QQvCh1OatETTruC7blIgHaHa?pid=ImgDet&rs=1',
        title21: 'pay 16955+25coin',
        title12: 'hikvision camera'),
    ImgModel(30000,
        imgUrl:
            "https://specificationsplus.com/wp-content/uploads/2022/06/Nothing-phone-2-Specifications-Plus-600x600.jpg",
        title21: '27900',
        title12: 'nothing phone (1)black'),
    ImgModel(16955,
        imgUrl: "https://5.imimg.com/data5/IU/UI/MY-38672683/4-500x500.jpg",
        title12: "Hikvision Cameras set ",
        title21: "8 channel or pay 16955+25coin"),
    ImgModel(1250,
        imgUrl:
            'https://th.bing.com/th/id/OIP.r0QQvCh1OatETTruC7blIgHaHa?pid=ImgDet&rs=1',
        title21: 'pay 16955+25coin',
        title12: 'hikvision camera'),
    ImgModel(30000,
        imgUrl:
            "https://specificationsplus.com/wp-content/uploads/2022/06/Nothing-phone-2-Specifications-Plus-600x600.jpg",
        title21: '27900',
        title12: 'nothing phone (1)black')
    // Your Cart_Model instances...
  ];

  List<ProudectModel> proModelList = [
    ProudectModel(1,
        imgUrl:
            "https://images.unsplash.com/photo-1649340807212-60f9af8d8f2e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Ymx1ZSUyMHNoYWRlfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
        title: "Product 1"),
    ProudectModel(5,
        imgUrl:
            "https://images.unsplash.com/photo-1598538362214-300d1f55b043?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Ymx1ZSUyMHNoYWRlfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
        title: "Product 2"),
    ProudectModel(3,
        imgUrl:
            "https://images.unsplash.com/photo-1542708993627-b6e5bbae43c4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjV8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        title: "Product 3"),
    ProudectModel(4,
        imgUrl:
            "https://images.unsplash.com/photo-1619545138519-b7b99df4b207?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmlsZGluZ3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
        title: "Product 4"),
    ProudectModel(6,
        imgUrl:
            "https://images.unsplash.com/photo-1661956602153-23384936a1d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NzR8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        title: "Product 5"),
  ];

  List<ProudectModel> proModelListc = [
    ProudectModel(1,
        imgUrl: "https://pngimg.com/uploads/keyboard/keyboard_PNG5869.png",
        title: "top accessories fromm 99"),
    ProudectModel(2,
        imgUrl:
            'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6454/6454639cv11d.jpg',
        title: 'dolby soundbar'
            'from 9990'),
    ProudectModel(3,
        imgUrl:
            "https://th.bing.com/th/id/R.725097efdfa0fb0f7d4585eb360dbb1b?rik=5OGT4QejxRd6IQ&riu=http%3a%2f%2fwww.tradearabia.com%2fsource%2f2014%2f12%2f08%2fplanes.jpg&ehk=GMJM42ctTV1xB%2fxg0FZzeCdBYymTwWlVvqqIsJWr%2f2c%3d&risl=&pid=ImgRaw&r=0",
        title: 'domestic filghts'
            'from 1199')
  ];

  List<String> catag = [
    'assets/image/img_9.png'
        'assets/image/img_10.png'
        'assets/image/img_11.png'
        'assets/image/img_12.png'
        'assets/image/img_13.png'
  ];

  List<String> imageUrls = [
    "https://onsitego.com/blog/wp-content/uploads/2021/10/Flipkart_Big_Billion_days_1.jpg",
    "https://i1.wp.com/www.indiaretailing.com/wp-content/uploads/2017/03/flipkart-electronics-sale.jpg?resize=681%2C400&ssl=1",
    "https://couponswala.com/blog/wp-content/uploads/2022/07/2.jpg",
    "https://cms.dmpcdn.com/article/2021/12/07/1d030bc0-57ec-11ec-84c7-83d34b61dbc7_original.jpg",
    "https://dronthego.net/wp-content/uploads/2022/03/realme-Lazada-10th-Birthday-Sale.jpg",
    "https://www.dtac.co.th/new-device-2020/assets/images/banner/banner-campaign-tablet-768x560-EN.jpg",
  ];
  List<ProdListCa> cartmode = [
    ProdListCa(1,
        imgUrl1: 'https://pngimg.com/uploads/keyboard/keyboard_PNG5869.png',
        title1: 'Computer'),
    ProdListCa(1,
        imgUrl1:
            'https://images-na.ssl-images-amazon.com/images/I/6127%2BRQHTWL._AC_SL1500_.jpg',
        title1: 'air purifier'),
    ProdListCa(1,
        imgUrl1:
            'https://th.bing.com/th/id/OIP.qJCV7YFubNvi08pNRHE07AHaDt?pid=ImgDet&rs=1',
        title1: 'true wireless '),
    ProdListCa(1,
        imgUrl1:
            'https://th.bing.com/th/id/OIP.2My-Fvg_GEQyEXKM61gcUAHaHa?pid=ImgDet&rs=1',
        title1: 'diffuser set'),
    ProdListCa(3,
        imgUrl1:
            'https://th.bing.com/th/id/OIP.jYad3NbgziFVzRCUCDzb6wHaHa?pid=ImgDet&rs=1',
        title1: 'car bag air purifier'),
    ProdListCa(3,
        imgUrl1:
            'https://img.freepik.com/free-psd/premium-mobile-phone-screen-mockup-template_53876-89617.jpg?w=1800&t=st=1691478032~exp=1691478632~hmac=59e20927f41544d110e426000048d01126bd609aa5b285a7b3ea0e7370ae3650',
        title1: 'plain cases'),
    ProdListCa(3,
        imgUrl1:
            'https://th.bing.com/th/id/OIP._ONwF0whh4PDeGU3ERzDLAHaHa?pid=ImgDet&rs=1',
        title1: 'laptop bags'),
    ProdListCa(3,
        imgUrl1:
            'https://th.bing.com/th/id/OIP.jYad3NbgziFVzRCUCDzb6wHaHa?pid=ImgDet&rs=1',
        title1: 'car bag air purifier'),
    ProdListCa(3,
        imgUrl1:
            'https://th.bing.com/th/id/OIP.jYad3NbgziFVzRCUCDzb6wHaHa?pid=ImgDet&rs=1',
        title1: 'car bag air purifier'),
  ];

  List<ProdListCa1> twopr = [
    ProdListCa1(1,
        imgUrl2:
            "https://th.bing.com/th/id/OIP.fyQPzQOBAgCouCXkAsOhfwHaHa?pid=ImgDet&rs=1",
        title2: 'Mobile Speakers',
        title2s: "Powerfull Bass! Durable",
        from: "from & 499"),
    ProdListCa1(2,
        imgUrl2:
            "https://th.bing.com/th/id/R.dac29df77e2de627fc5026ab3f1e1607?rik=WE9%2f%2bofHHAXW%2fg&riu=http%3a%2f%2fwww.techguide.com.au%2fwp-content%2fuploads%2fsamsungsmartmain4.jpg&ehk=tHHYiLVxerlSSWvT3dC3pmXhwEvKNU5Xrx47iEfEKe0%3d&risl=&pid=ImgRaw&r=0",
        title2: 'Bestseller in Samart Tvs',
        title2s: "mi,Samung ,Hisense & more",
        from: "from & 6749")
  ];
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 290,
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://marconix.in/wp-content/uploads/2020/04/flipkart_380x153.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  SizedBox(width: 15),
                  Switch(
                    value: isSwitchedOn,
                    onChanged: (value) {
                      setState(() {
                        isSwitchedOn = value;
                        // Implement dark mode toggle here
                      });
                    },
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      SizedBox(
                        width: 310,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: onPressed,
                                  icon: Icon(Icons.camera_alt_outlined),
                                ),
                                IconButton(
                                  onPressed: onPressed,
                                  icon: Icon(Icons.mic),
                                ),
                              ],
                            ),
                            prefixIcon:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              IconButton(
                                onPressed: onPressed,
                                icon: Icon(Icons.search),
                              ),
                            ]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
                Divider(thickness: 1),
                SizedBox(
                  height: 200,
                  child: RunningAdd(length: imageUrls.length, urls: imageUrls,)
                  // CarouselSlider.builder(
                  //   itemCount: imageUrls.length,
                  //   itemBuilder: (context, index, realIndex) {
                  //     return Container(
                  //       decoration: BoxDecoration(
                  //         image: DecorationImage(
                  //           image: NetworkImage(imageUrls[index]),
                  //           fit: BoxFit.fill,
                  //         ),
                  //       ),
                  //     );
                  //   },
                  //   options: CarouselOptions(
                  //     height: 200,
                  //     aspectRatio: 16 / 9,
                  //     viewportFraction: 1,
                  //     initialPage: 0,
                  //     enableInfiniteScroll: true,
                  //     reverse: false,
                  //     autoPlay: true,
                  //     autoPlayInterval: Duration(seconds: 1),
                  //     autoPlayAnimationDuration: Duration(milliseconds: 800),
                  //     autoPlayCurve: Curves.fastOutSlowIn,
                  //     enlargeCenterPage: true,
                  //     enlargeFactor: 0.3,
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
                ),
                Divider(thickness: 1),
                Container(
                  child: Column(
                    children: [
                      Row(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          height: 20,
                        )
                      ]),
                      Row(
                        children: [
                          SizedBox(width: 20, height: 20),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Image.asset(
                                  'assets/image/img_4.png',
                                  width: 200,
                                ),
                              ),
                              Text(
                                'Top Offers',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(width: 20, height: 20),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Image.asset(
                                  'assets/image/img_5.png',
                                  width: 200,
                                ),
                              ),
                              Text('Mobiles', style: TextStyle(fontSize: 10))
                            ],
                          ),
                          SizedBox(width: 20, height: 20),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Image.asset(
                                  'assets/image/img_6.png',
                                  width: 200,
                                ),
                              ),
                              Text('Electronics',
                                  style: TextStyle(fontSize: 10))
                            ],
                          ),
                          SizedBox(width: 20, height: 20),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Image.asset(
                                  'assets/image/img_7.png',
                                  width: 200,
                                ),
                              ),
                              Text('Tvs &', style: TextStyle(fontSize: 10))
                            ],
                          ),
                          SizedBox(width: 20, height: 20),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Image.asset(
                                  'assets/image/img_8.png',
                                  width: 200,
                                ),
                              ),
                              Text('Beauty,toy', style: TextStyle(fontSize: 10))
                            ],
                          ),
                        ],
                      ),
                      Row(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          height: 20,
                        )
                      ]),
                      SizedBox(
                        width: MediaQuery.of(context).size.width, height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Image.asset(
                                  'assets/image/img_9.png',
                                  width: 200,
                                ),
                              ),
                              Text('next-gen Brands',
                                  style: TextStyle(fontSize: 10))
                            ],
                          ),
                          itemCount: 5,
                        ),
                        // child: Row(
                        //   children: [
                        //     SizedBox(width: 10, height: 20),
                        //     Column(
                        //       children: [
                        //         CircleAvatar(
                        //           radius: 30,
                        //           child: Image.asset(
                        //             'assets/image/img_9.png',
                        //             width: 200,
                        //           ),
                        //         ),
                        //         Text('next-gen Brands',
                        //             style: TextStyle(fontSize: 10))
                        //       ],
                        //     ),
                        //     SizedBox(width: 10, height: 20),
                        //     Column(
                        //       children: [
                        //         CircleAvatar(
                        //           radius: 30,
                        //           child: Image.asset(
                        //             'assets/image/img_10.png',
                        //             width: 200,
                        //           ),
                        //         ),
                        //         Text('Home & Kitchen',
                        //             style: TextStyle(fontSize: 10))
                        //       ],
                        //     ),
                        //     SizedBox(width: 10, height: 20),
                        //     Column(
                        //       children: [
                        //         CircleAvatar(
                        //           radius: 30,
                        //           child: Image.asset(
                        //             'assets/image/img_11.png',
                        //             width: 200,
                        //           ),
                        //         ),
                        //         Text('Fashion', style: TextStyle(fontSize: 10))
                        //       ],
                        //     ),
                        //     SizedBox(width: 10, height: 20),
                        //     Column(
                        //       children: [
                        //         CircleAvatar(
                        //           radius: 30,
                        //           child: Image.asset(
                        //             'assets/image/img_12.png',
                        //             width: 200,
                        //           ),
                        //         ),
                        //         Text('Flights & Hotels',
                        //             style: TextStyle(fontSize: 10))
                        //       ],
                        //     ),
                        //     SizedBox(width: 10, height: 20),
                        //     Column(
                        //       children: [
                        //         CircleAvatar(
                        //           radius: 30,
                        //           child: Image.asset(
                        //             'assets/image/img_13.png',
                        //             width: 200,
                        //           ),
                        //         ),
                        //         Text('Groceryx', style: TextStyle(fontSize: 10))
                        //       ],
                        //     ),
                        //   ],
                        // ),
                      ),
                      Row(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          height: 10,
                        )
                      ])
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: CarouselSlider.builder(
                    itemCount: imageUrls.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(imageUrls[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: 90,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 100),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                Divider(thickness: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //Text('', style: TextStyle(fontSize: 15,),),
                    Text(
                      "Recently Viewed Stores",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: cartmode.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12, width: 1),
                            borderRadius: BorderRadius.circular(2),
                            shape: BoxShape.rectangle),
                        width: 100,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.network(
                                cartmode[index].imgUrl1,
                                height: 70,
                                width: 80,
                                fit: BoxFit.fill,
                              ),
                              //SizedBox(height: 8),
                              // Text('Dummy Card Text'),
                              Text(cartmode[index].title1),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(thickness: 1),
                Container(
                  height: 150,
                  // color: Colors.redAccent,
                  child: GridView.builder(
                    itemCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            proModelListc[index].imgUrl,
                            height: 60,
                            width: 90,
                            // fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(proModelListc[index].title,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                ),
                                maxLines: 2),
                          ),
                          SizedBox(height: 1),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(thickness: 1),
                SizedBox(height: 0.1),
                Divider(thickness: 1),
                Container(
                  // color: Colors.redAccent,
                  child: GridView.builder(
                    itemCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5, color: Colors.orangeAccent),
                            borderRadius: BorderRadius.circular(6)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              twopr[index].imgUrl2,
                              height: 100,
                              width: 120,
                              fit: BoxFit.fill,
                            ),
                            //SizedBox(height: 8),
                            Text(twopr[index].title2),
                            Text(twopr[index].title2s),
                            // Text(twopr[index].from),
                            //Text('Mo'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // child: GridView.builder(shrinkWrap: true,
                  //   physics:NeverScrollableScrollPhysics(),
                  //   // scrollDirection: Axis.vertical,
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 7,
                  //     mainAxisSpacing: 10,
                  //
                  //   ),
                  //   itemCount: proModelList.length,
                  //   itemBuilder: (context, index) {
                  //     return Container(
                  //       // margin: EdgeInsets.all(8),
                  //       color: Colors.grey[50],
                  //       child: Column(
                  //         // mainAxisAlignment: MainAxisAlignment.end,
                  //         // crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Image.network(
                  //             proModelList[index].imgUrl,
                  //             height: 150,
                  //             width: 150,
                  //             fit: BoxFit.fill,
                  //           ),
                  //           SizedBox(height: 8),
                  //           Text(proModelList[index].title),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  // ),
                ),
                Divider(thickness: 1),
                // SizedBox(
                //     child: ListView.builder(
                //   shrinkWrap: true,
                //   physics: NeverScrollableScrollPhysics(),
                //   itemBuilder: (context, index) {
                //     return Container(
                //       // margin: EdgeInsets.all(8),
                //       color: Colors.grey[50],
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.stretch,
                //         //scrossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Image.network(
                //             proModelList[index].imgUrl,
                //             height: 150,
                //             width: 150,
                //             fit: BoxFit.cover,
                //           ),
                //           SizedBox(height: 1),
                //           Text(proModelList[index].title),
                //         ],
                //       ),
                //     );
                //   },
                //   itemCount: proModelList.length,
                // )),
                SizedBox(
                    child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black12),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(children: [
                          SizedBox(width: 21),
                          Image.network(
                            imgModelList[index].imgUrl,
                            height: 100,
                            width: 90,
                            fit: BoxFit.cover,
                          ),
                          // Divider(thickness: 1),
                          SizedBox(
                            width: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [TextWidgects(text: imgModelList[index].title12, ),
                                //SizedBox(width: 21),
                                // Text(imgModelList[index].title12,
                                //     // overflow: TextOverflow.ellipsis,
                                //     style: const TextStyle(
                                //         fontWeight: FontWeight.bold,
                                //         fontSize: 16)),
                                Row(
                                  children: [
                                    Text(imgModelList[index].id3.toString(),
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough)),
                                    Text("    "),
                                    Text('\u{20B9}${imgModelList[index].id3}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text("    "),
                                    Text("64% off",
                                        style: TextStyle(color: Colors.green)),
                                  ],
                                ),

                                Text(
                                  imgModelList[index].title21,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                    );
                  },
                  itemCount: imgModelList.length,
                )),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex, // Add this line
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
