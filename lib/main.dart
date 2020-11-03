import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0,
        // leading: IconButton( //! AppBar에서 왼쪽부터 시작하는 아이콘을 만드는 속성
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     print('menu button is clicked');
        //   },
        // ),
        actions: [
          //! AppBar에서 오른쪽부터 시작하는 아이콘을 만드는 속성
          IconButton(
            //! IconButton 으로 앱 아이콘을 만든다
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              //! 아이콘이 눌리면 특정 액션을 취한다 => 함수의 형태 (){}
              print('shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          )
        ],
      ),
      drawer: Drawer(
        //! 왼쪽부터 나오는 속성탭. 해당 속성을 사용하면 자연스럽게 햄버거 버튼이 생긴다
        child: ListView(
          //! ListView를 child로 먹임과 동시에 내부 구조를 작성하게 된다.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              //! 제일 위에 색칠한 탭. 자동이체닷컴에서는 이름, 계정 정보, 내정보관리 등이 들어갈 듯.
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/kimnakseo.jpeg'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('NakSeo'),
              accountEmail: Text('nakseono@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
            ),
            ListTile(
              //! ListView에서 탭 하나 하나를 의미함.
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('home button is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              //! ListView에서 탭 하나 하나를 의미함.
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('home button is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              //! ListView에서 탭 하나 하나를 의미함.
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('home button is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
