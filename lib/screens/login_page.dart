import 'package:coffee_tale/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:coffee_tale/widgets/app_title.dart';

class LoginPage extends StatefulWidget {

 const LoginPage({super.key});
   @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //元件宣告
  final TextEditingController accountController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  bool isLoading = false;

  //初始化
  @override
  void initState() {
    super.initState();
    // TODO: 初始化資料
  }

  //釋放資源用,因為輸入框會監聽吃資源
  @override
  void dispose() {
    accountController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  //排版設置
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.account_circle, size: 100),

                    AppTitle(),

                    SizedBox(height: 5),

                    Text(
                      '記錄每一杯，成就你的咖啡傳說',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '電子郵件',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    SizedBox(height: 5),

                    TextField(
                      controller: accountController,
                      decoration: InputDecoration(
                        hintText: 'your@email.com',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 10),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '密碼',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    SizedBox(height: 5),

                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 18),

                    // 登入按鈕
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          String acc = accountController.text;
                          String pwd = passwordController.text;

                          if (acc.trim().isEmpty || pwd.trim().isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('請輸入帳號與密碼')),
                            );
                            return;
                          }

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber.shade200,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          '登入',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    SizedBox(height: 18),

                    // Google
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown.shade900,
                          foregroundColor: Colors.white,
                        ),
                        child: Text('使用 Google 登入'),
                      ),
                    ),

                    SizedBox(height: 10),

                    // Apple
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown.shade900,
                          foregroundColor: Colors.white,
                        ),
                        child: Text('使用 Apple ID 登入'),
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Apple ID 登入僅限 iOS 裝置',
                      style: TextStyle(fontSize: 12),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('還沒帳號？'),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(0, 0),
                            tapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            '立即註冊',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber.shade300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    '開始你的手沖傳說',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}//LoginPageState