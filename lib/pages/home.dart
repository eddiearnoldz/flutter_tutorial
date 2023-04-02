import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top:40,left:20,right:20,bottom:40),
                alignment: Alignment.center,
            decoration: BoxDecoration(
              boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.11), 
                blurRadius: 40,
                spreadRadius: 0.0)
        ]),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                hintText: 'Search Pancake',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset('assets/icons/search_icon.svg'),
                ),
                suffixIcon: Container(
                  width: 100,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const VerticalDivider(
                          color: Colors.black,
                          indent: 10,
                          endIndent: 10,
                          thickness: 0.2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/filter_icon.svg',
                          height: 30,
                          width: 30,),
                        ),
                      ],
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none)
              ),
            ),
          )
      ]),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
      backgroundColor: Colors.redAccent,
      centerTitle: true,
      leading: GestureDetector(
          onTap: () {

          },
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius:BorderRadius.circular(10)
            ),
          child: SvgPicture.asset('assets/icons/back_arrow.svg'),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {

          },
          child: Container(
          margin: const EdgeInsets.all(10),
          width: 37,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius:BorderRadius.circular(10)
            ),
          child: SvgPicture.asset('assets/icons/hamburger_menu.svg'),
          ),
      ),
      ], 
    );
  }
}