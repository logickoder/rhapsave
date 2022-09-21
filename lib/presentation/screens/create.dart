import 'package:flutter/material.dart';
import '../core/dimens.dart';
import '../widgets/profile_header.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  static const _items = [
    {
      'icon': Icons.security_outlined,
      'title': 'Security',
    },
    {
      'icon': Icons.credit_card_outlined,
      'title': 'Cards',
    },
    {
      'icon': Icons.notifications_outlined,
      'title': 'Notifications',
    },
    {
      'icon': Icons.support_agent,
      'title': 'Live Support',
    },
    {
      'icon': Icons.info_outline,
      'title': 'About Us',
    },
    {
      'icon': Icons.contact_phone_outlined,
      'title': 'Contact Us',
    },
    {
      'icon': Icons.credit_card_off_outlined,
      'title': 'Terms & Privacy Policy',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            const ProfileHeader(),
            vSpace(sPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: sPadding),
              child: Column(
                children:
                    _items.map((item) => ProfileItem(item: item)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final Map<String, Object> item;

  const ProfileItem({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF484848);
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(sSecondaryPadding / 2),
          ),
          child: ListTile(
            leading: Icon(
              item['icon'] as IconData,
              color: theme.colorScheme.primary,
            ),
            title: Text(
              item['title'] as String,
              style: theme.textTheme.bodyText2?.copyWith(
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
            trailing: const Icon(
              Icons.navigate_next_outlined,
              color: color,
            ),
          ),
        ),
        vSpace(sSecondaryPadding / 2),
      ],
    );
  }
}