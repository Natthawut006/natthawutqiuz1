
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('NatthawutQuiz1'),
      ),

       backgroundColor: Color.fromARGB(255, 241, 170, 129), // กำหนดสีพื้นหลังของ Scaffold
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20), // ระยะห่างจากด้านบน
            const Text(
              'My Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),


            const SizedBox(height: 20), // ระยะห่างจากด้านบน
            Card(

              child: SizedBox(
                width: widthScreen * 0.8,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://scontent-sin6-3.xx.fbcdn.net/v/t39.30808-6/309317466_3330500987225396_7019051662512409098_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHBO2ACh88ThPlQw0EbozcwoPVdOliC-a2g9V06WIL5rQBbTCNwvry03ULfwS2t3lD9AS_0MVmAxvelx4nlK1vD&_nc_ohc=tm9zhtQhd0gAX97_hsW&_nc_ht=scontent-sin6-3.xx&oh=00_AfAyyjBMtZ7ubrgkf4PKiKHdJ_1RmKJcz1UYWuvqpL5pyQ&oe=64E2763E',
                        ),
                        radius: 30, // ปรับขนาดรูปเล็กลง
                      ),
                      SizedBox(width: 20), // ระยะห่างระหว่างรูปกับข้อความ "Hi"
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome back,',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Natthawut Pandum',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),


            
            const SizedBox(height: 20),
            Card(
              child: SizedBox(
                width: widthScreen * 1.8,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shelf its all about you read.\nTry and enjoy.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),

                          
                           Icon(
                            Icons.science,
                            color: Colors.grey,
                          ),
                          Text(
                            'SMART PICKER',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              backgroundColor: Colors.grey,
                            ),
                          ),


                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
