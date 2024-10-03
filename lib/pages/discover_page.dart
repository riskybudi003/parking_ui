import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_youtube/theme/app_pallete.dart';
import 'package:parkcar_youtube/widgets/categories_widget.dart';
import 'package:parkcar_youtube/widgets/hero_widgets.dart';
import 'package:parkcar_youtube/widgets/inprogress_widget.dart';
import 'package:parkcar_youtube/widgets/more_widget.dart';
import 'package:parkcar_youtube/widgets/nearby_parking_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      bottomNavigationBar: bottomnavigationbar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroWidgets(),
            Gap(20),
            InprogressWidget(),
            Gap(20),
            NearbyParkingWidget(),
            Gap(20),
            CategoriesWidget(),
            Gap(20),
            MoreWidget()
          ],
        ),
      ),
    );
  }

  BottomNavigationBar bottomnavigationbar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppPallete.white,
      selectedItemColor: AppPallete.colorPrimary,
      unselectedItemColor: AppPallete.colorGrey,
      showUnselectedLabels: true,
      selectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      items: [
        bottomNavigationBarItem(
            icon: 'assets/svgs/discover.svg', label: 'Discover'),
        bottomNavigationBarItem(
            icon: 'assets/svgs/orders.svg', label: 'Orders'),
        bottomNavigationBarItem(
            icon: 'assets/svgs/wallet.svg', label: 'Wallet'),
        bottomNavigationBarItem(
            icon: 'assets/svgs/setting.svg', label: 'Setting'),
      ],
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem({
    required String label,
    required String icon,
  }) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          icon,
          colorFilter:
              const ColorFilter.mode(AppPallete.colorGrey, BlendMode.srcIn),
        ),
        activeIcon: SvgPicture.asset(
          'assets/svgs/grid.svg',
          colorFilter:
              const ColorFilter.mode(AppPallete.colorPrimary, BlendMode.srcIn),
        ),
        label: label);
  }
}
