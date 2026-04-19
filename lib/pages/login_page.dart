import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  //元件宣告
  final TextEditingController accountController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //元件宣告

  //初始化

  //初始化

  //排版設置
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.account_circle,
//               size: 100,
//             ),
            
//             Text(
//               'Coffee Tale',
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             SizedBox(height: 5),//這是空白間距

//             Text(
//               '記錄每一杯,成就你的咖啡傳說',
//               style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             SizedBox(height: 40),//這是空白間距

//             Text(
//               '電子郵件',
//               style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             // 👤 帳號
//             TextField(
//               controller: accountController,
//               decoration: InputDecoration(
//                 hintText: 'your@email.com',
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             SizedBox(height: 20),

//             // 🔒 密碼
//             TextField(
//               controller: passwordController,
//               obscureText: true,//密碼模式(遮蔽成***)
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             SizedBox(height: 30),

//             // 🔘 登入按鈕
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   String acc = accountController.text;
//                   String pwd = passwordController.text;

//                   print('帳號: $acc');
//                   print('密碼: $pwd');

//                   // TODO: 之後這裡接 API / 判斷登入
//                 },
//                 child: Text('登入'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // ☕ Logo
          Icon(
            Icons.account_circle,
            size: 100,
          ),

          // 標題
          Text(
            'Coffee Tale',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 5),

          // 副標
          Text(
            '記錄每一杯,成就你的咖啡傳說',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 40),

          // ⭐ 電子郵件（靠左）
          SizedBox(
            width: double.infinity,
            child: Text(
              '電子郵件',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 5),

          // 帳號輸入
          SizedBox(
            width: double.infinity,
            child: TextField(
              controller: accountController,
              decoration: InputDecoration(
                hintText: 'your@email.com',
                border: OutlineInputBorder(),
              ),
            ),
          ),

          SizedBox(height: 20),

          // ⭐ 密碼標題（也順便幫你靠左）
          SizedBox(
            width: double.infinity,
            child: Text(
              '密碼',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 5),

          // 密碼輸入
          SizedBox(
            width: double.infinity,
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),

          SizedBox(height: 30),

          // 登入按鈕
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                String acc = accountController.text;
                String pwd = passwordController.text;

                print('帳號: $acc');
                print('密碼: $pwd');
              },
              child: Text('登入'),
            ),
          ),
        ],
      ),
    ),
  );
}
}