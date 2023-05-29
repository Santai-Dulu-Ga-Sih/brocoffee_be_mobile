import 'package:flutter/material.dart';

import 'package:brocoffee_mobile/theme.dart';
import 'package:brocoffee_mobile/pages/tentang_kami.dart';
import 'package:brocoffee_mobile/pages/kopipedia.dart';

class AppDrawer extends StatelessWidget {
  void _navigateToKopipediaPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Kopipedia()));
  }

  void _navigateToTentangKamiPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TentangKami()));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: lightgreyColor,
            ),
            child: Container(
              height: 50.0,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 10.0),
                    Image.asset('lib/assets/img/logo.png'),
                    SizedBox(height: 10.0),
                    Text('OLVAAAAAAA',
                        style: TextStyle(
                            fontFamily: 'GillSans',
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
              leading: Image.asset(
                'lib/assets/icons/People.png',
                width: 24,
                height: 24,
              ),
              title: GestureDetector(
                onTap: () => _navigateToTentangKamiPage(context),
                child: const Text('TENTANG KAMI',
                    style: TextStyle(
                        fontFamily: 'GillSans',
                        fontSize: 18,
                        fontWeight: FontWeight.normal)),
              )),
          ListTile(
              leading: Image.asset(
                'lib/assets/icons/coffebeans.png',
                width: 24,
                height: 24,
              ),
              title: GestureDetector(
                onTap: () => _navigateToKopipediaPage(context),
                child: Text('KOPIPEDIA',
                    style: TextStyle(
                        fontFamily: 'GillSans',
                        fontSize: 18,
                        fontWeight: FontWeight.normal)),
              )),
          ListTile(
            leading: Image.asset(
              'lib/assets/icons/ezpzkopi.png',
              width: 24,
              height: 24,
            ),
            title: const Text('EZ PZ KOPI',
                style: TextStyle(
                    fontFamily: 'GillSans',
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(
              'lib/assets/icons/cart.png',
              width: 24,
              height: 24,
            ),
            title: const Text('KERANJANG',
                style: TextStyle(
                    fontFamily: 'GillSans',
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(
              'lib/assets/icons/card.png',
              width: 24,
              height: 24,
            ),
            title: const Text('PAYMENT METHODS',
                style: TextStyle(
                    fontFamily: 'GillSans',
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('lib/assets/icons/logout.png',
                      width: 24, height: 24),
                  SizedBox(height: 10.0),
                  Text(
                    'KELUAR',
                    style: TextStyle(
                      fontFamily: 'GillSans',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Tambahkan aksi yang ingin dilakukan saat tombol "Keluar" ditekan
              },
            ),
          ),
        ],
      ),
    );
  }
}
