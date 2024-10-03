import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_youtube/widgets/button_widget.dart';

class ContainerWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final String? actionText;
  final VoidCallback? onActionTap;

  const ContainerWidget(
      {super.key,
      required this.title,
      required this.child,
      this.actionText,
      this.onActionTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [header(), const Gap(16), child],
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Spacer(),
          if (actionText != null && onActionTap != null)
            ButtonWidget(text: actionText!, onTap: onActionTap!)
        ],
      ),
    );
  }
}
