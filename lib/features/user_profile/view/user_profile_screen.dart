import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel_time/generated/l10n.dart';

@RoutePage()
class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text(
            S.of(context).bottomNavigationBarShops,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text('Test'),
            onPressed: () {
              final docUser = FirebaseFirestore.instance.collection("users");
              var userInfo = FirebaseAuth.instance.currentUser;
              final json = {
                'fullName': 'Loviannikov Oleksandr',
                'phone': userInfo?.phoneNumber,
                'birthday': DateTime(2023, 9, 28),
              };
            },
          ),
        ],
      ),
    ));
  }
}
