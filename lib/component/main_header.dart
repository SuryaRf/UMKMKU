import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 10,
          )
        ]),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                    ]),
                child: TextField(
                  autofocus: false,
                  onSubmitted: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 16,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none),
                    hintText: 'Search..',
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const SizedBox(
              height: 40,
              width: 40,
              child: Icon(
                Icons.format_list_bulleted_sharp,
                color: Colors.black,
              ),
            ),
             Badge(
              label: Text('1',
              style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.blue,
               child: SizedBox(
                height: 40,
                width: 40,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                           ),
             ),
          ],
        ),
      ),
    );
  }
}
