import 'package:flutter/material.dart';
import 'package:inspire_test/carousel_widget.dart';
import 'package:inspire_test/timer_widget.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
          color: Colors.black,
        ),
        title: Text(
          "Quiz",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Hello,",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Let's Start Quiz",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Image(
                image: AssetImage('lib/images/logo.png'),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Winner's",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  // margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 100.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CarouselWidget(
                        path: "lib/images/gamer3.png",
                        badgeIcon: "lib/images/medal3.png",
                        name: "David James",
                      ),
                      SizedBox(width: 25),
                      CarouselWidget(
                        path: "lib/images/woman3.png",
                        badgeIcon: "lib/images/medal1.png",
                        name: "Alena Derlin",
                      ),
                      SizedBox(width: 25),
                      CarouselWidget(
                        path: "lib/images/girl3.png",
                        badgeIcon: "lib/images/medal2.png",
                        name: "Madelyn Dias",
                      ),
                      SizedBox(width: 25),
                      CarouselWidget(
                        path: "lib/images/gamer3.png",
                        badgeIcon: "lib/images/medal1.png",
                        name: "David James",
                      ),
                    ],
                  )),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Popular Super Quiz",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 25,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffF2B754),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Personality Quiz",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "This Quiz Start's on",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TimerWidget(
                              time: "11",
                              duration: "Days",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TimerWidget(
                              time: "01",
                              duration: "Month",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TimerWidget(
                              time: "23",
                              duration: "Year",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff000000).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            "Play Quiz now".toUpperCase(),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -45,
                    right: 30,
                    child: Image(
                      height: 200,
                      width: 40,
                      image: AssetImage('lib/images/man_image.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: Text(
          "id",
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        ), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,

        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        child: Container(
          height: 40,
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  Icon(Icons.home), // icon
                  Text("Home", style: TextStyle(fontSize: 12)), //
                ],
              ),
              Column(
                children: [
                  Icon(Icons.grade_rounded), // icon
                  Text("My Courses", style: TextStyle(fontSize: 12)), //
                ],
              ),
              Column(
                children: [
                  Icon(Icons.favorite_border), // icon
                  Text("Favourite", style: TextStyle(fontSize: 12)), //
                ],
              ),
              Column(
                children: [
                  Icon(Icons.note_add_sharp), // icon
                  Text("My Note", style: TextStyle(fontSize: 12)), //
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
