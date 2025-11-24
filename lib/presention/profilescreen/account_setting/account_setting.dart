import 'package:flutter/material.dart';
import 'package:taksmanager/presention/wedgit/coustom_profile/coustom_profile.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Account Setting")),backgroundColor: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            CoustomProfile_Screen(title: "Change Password", onTap: (){}, icon: 'assets/icon/changepassword.svg'),
            CoustomProfile_Screen(title: "Delete Account,", onTap: (){}, icon: 'assets/icon/deletaccoutnd.svg'),
          ],
        ),
      ),

    );
  }
}
