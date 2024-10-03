import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_youtube/theme/app_pallete.dart';

class HeroWidgets extends StatelessWidget {
  const HeroWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [content(), image(), search()],
    );
  }

  Container content() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 54,
        top: 26,
      ),
      color: AppPallete.colorPrimaryDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/angga.png'),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              const Gap(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppPallete.colorTextSecondary),
                  ),
                  const Gap(2),
                  Text(
                    "Masbud",
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppPallete.white),
                  ),
                ],
              ),
            ],
          ),
          const Gap(21),
          Text(
            'Get Your\nSecure Park',
            style: GoogleFonts.plusJakartaSans(
                fontSize: 30,
                height: 1,
                fontWeight: FontWeight.w800,
                color: AppPallete.white),
          ),
        ],
      ),
    );
  }

  Widget image() {
    return Positioned(
      width: 160,
      right: 0,
      bottom: 54,
      child: Image.asset(
        'assets/images/hero.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget search() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF070625).withOpacity(.06),
                blurRadius: 20,
                offset: const Offset(0, 10)),
          ],
        ),
        child: TextFormField(
          cursorColor: AppPallete.colorPrimary,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppPallete.white,
            hintText: 'Search by name or city area',
            hintStyle: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              color: AppPallete.colorTextTertiery,
            ),
            enabledBorder: border(),
            focusedBorder: border(),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 14,
            ),
            suffixIcon: Align(
              widthFactor: 1,
              heightFactor: 1,
              child: SvgPicture.asset(
                'assets/svgs/search.svg',
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide.none,
    );
  }
}
