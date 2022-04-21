import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Layouting(),
    );
  }
}

class Layouting extends StatelessWidget {
  const Layouting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> listViewData = [10, 100, 1000];
    Color mainColor = Color(0xffCDDEFF);
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        leading: Icon(Icons.list_alt),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 16,
        shadowColor: Colors.grey.withOpacity(0.5),
        title: Text(
          'Product',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ClipRRect(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                            "https://i.stack.imgur.com/RFyyJ.jpg?s=64&g=1"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "New Arrival",
                            // textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Code",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          // Container(
                          //   decoration: ,
                          // )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                          // alignment: Alignment.right,
                          child: Icon(Icons.aspect_ratio)),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}

// class ProductPage extends StatelessWidget {
//   const ProductPage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 10,),
//       child: AspectRatio(
//         aspectRatio: 3/1,
//         child: Row(
//           children: <Widget>[
//             AspectRatio(aspectRatio: 1/1,
//             child: Clip,),
            
//           ],
//         ),
//       ),
//     );
//   }
// }