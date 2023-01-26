import 'package:book_repair/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.appBarTitle,
    this.userName,
    this.userImage,
  });
  final String? appBarTitle;
  final String? userName;
  final String? userImage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appBarTitle!),
      elevation: 0,
      actions: [
        InkWell(
          onTap: () => AuthService().signOut(),
          child: const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.logout,
              size: 30,
            ),
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
      flexibleSpace: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 10,
            )
          ],
          borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(150)),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF020024),
              Color(0xFF246EE9),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 7),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: userImage != null
                    ? Image.network(userImage!)
                    : const Text(
                        'M',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  userName!,
                  style: const TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 22,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
