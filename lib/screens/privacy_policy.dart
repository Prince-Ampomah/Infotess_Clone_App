import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'to_privacy_policy',
      child: Scaffold(
        body: Center(child: Text('Privacy'),),
      ),
      
    );
  }
}