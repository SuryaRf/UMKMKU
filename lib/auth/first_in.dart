import 'package:flutter/material.dart';
import 'package:umkmku/constant.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(child: Text('Welcome', style: title,)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(30),
               
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 160, top: 50, right: 10),
                    child: Stack(
                      children: [
                        
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorDefault.withOpacity(0.5),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset('assets/images/merchant1.png',height: 100,width: 100,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
              padding: const EdgeInsets.only( top: 20, left: 10),
              child: Stack(
                children: [
                  
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple.withOpacity(0.5),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset('assets/images/merchant.png', height: 170, width: 170,),
                  ),
                ],
              ),
            )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: colorDefault,
            
              ),
              child: Center(child: Text('LOGIN', style: subTitle.copyWith(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
            ),
          ),
           const SizedBox(height: 10,),
          Center(
            child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: colorDefault.withOpacity(0.5),
            
              ),
              child: Center(child: Text('SIGNUP', style: subTitle.copyWith(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black),),),
            ),
          )
        ],),
      ),
    );
  }
}
