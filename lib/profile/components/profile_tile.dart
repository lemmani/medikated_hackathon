import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final Color? subtitleColor;
  final VoidCallback? onTap;
  final Widget? trailing;

  const ProfileTile({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    this.subtitleColor,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: subtitleColor),
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
