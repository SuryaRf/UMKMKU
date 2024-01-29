import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umkmku/constant.dart';
import 'package:umkmku/controller/login_controller.dart';

class SignInPage extends StatelessWidget {
  final c = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
 return Scaffold(
      backgroundColor: Color(0xffCDF5FD),
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Image.asset('assets/images/icon1.png', height: 70, width: 200,),
            )),
            Center(child: Text('Smart Concept, Simple Usage \n For UMKM Indonesia', style: title.copyWith(fontSize: 18, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),textAlign: TextAlign.center,)),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text('Enter your account', style: subTitle.copyWith(fontWeight: FontWeight.bold, fontSize: 17),),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email address',
                  
                  focusColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  )
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
             
                  focusColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  )
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Container(
                height: 70,
                width: 300,
                decoration: 
                BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text('LOGIN', style:subTitle.copyWith(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white) ,),),
              ),
            ),
            const SizedBox(height: 20,),
            Center(child: Text('Or Sign With - ', style: subTitle.copyWith(fontWeight: FontWeight.w300, fontSize: 15),),),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/google.png', height: 40, width: 40,),
                  Image.asset('assets/images/facebook.png', height: 40, width: 40,),
                  Image.asset('assets/images/twitter.png', height: 40, width: 40,),
                ],
              ),
            )
          ],
        )),
      ),
    );
  



  }
}