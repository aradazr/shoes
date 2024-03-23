import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  //! TabController? _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //* color of the app
    Color color = Color.fromARGB(255, 217, 217, 217);

    Color backColor = const Color.fromARGB(255, 34, 34, 34);

    return Scaffold(
        backgroundColor: backColor,
        body: SafeArea(
          //* main column
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
                child:
                //! app bar
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 45,
                    ),
                    Image.asset(
                      'assets/images/profile.png',
                      height: 60,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),


              //! search bar
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(49), color: color),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Search Here',
                      style: GoogleFonts.playfairDisplay(fontSize: 20),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Icon(
                      Icons.search,
                      weight: 1,
                      size: 40,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),

              //! 4 brand

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          color: color),
                      child: Image.asset('assets/images/adidas.png'),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          color: color),
                      child: Image.asset('assets/images/nike.png'),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          color: color),
                      child: Image.asset('assets/images/amiri.png'),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27),
                          color: color),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 3, 20),
                        child: Image.asset('assets/images/newb.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )

              //! Text Choose Your ...

              ,
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  'Choose\nYour Faivorite Shoes!',
                  style: GoogleFonts.playfairDisplay(
                      color: Colors.white, fontSize: 36),
                ),
              ),

               SizedBox(height: 15,),


              //* list view builder for shoes
              SizedBox(
                width: 400,
                height: 320,
                //for items to scroll
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    
                    
                    itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child:
                      //grey background
                       Container(
                        alignment: Alignment.center,
                      height: 320,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62),
                        color: color
                      ),
                      child: 
                      
                      //! shoes and texts in grey container
                      
                      Column(
                        
                        
                        children: [

                          //for picture border
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/images/jordan.png',
                              fit: BoxFit.cover,
                              height: 220,
                              
                              ),
                            ),
                          ),

                          SizedBox(height: 3,),

                          // jordan 1 low and the price
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Jordan 1 LOW',
                              style:GoogleFonts.playfairDisplay(
                      color: Colors.black, fontSize: 27),
                              ),
                              Text("108 \$",
                              style:GoogleFonts.playfairDisplay(
                      color: Colors.black, fontSize: 27),
                              ),

                            ],

                          ),
                          SizedBox(height: 3,),

                          //travis scott
                          Padding(
                            padding: const EdgeInsets.only(right: 190),
                            child: Text("Travis Scott",
                                style:GoogleFonts.playfairDisplay(
                                                  color: Colors.black, fontSize: 18),
                                ),
                          ),
                        ],
                      ),
                                        ),
                    );
                  },),
                ),
              )
            ],
          ),
        )

        //! Bottom Nav Bar

          ,bottomNavigationBar: MotionTabBar( 
        controller: _motionTabBarController, 
        initialSelectedTab: "Home",
        useSafeArea: true, 
        labels: const ["Dashboard", "Home", "Profile", "Settings"],
        icons: const [Icons.dashboard, Icons.home, Icons.people_alt, Icons.settings],

        
        
        tabSize: 60,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 14,
          color: Color.fromARGB(0, 0, 0, 0),
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.black,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.black,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController!.index = value;
          });
        },
      ),
    
        );
  }
}
