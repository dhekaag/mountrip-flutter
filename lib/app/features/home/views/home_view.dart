import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountrip/app/features/home/controllers/home_controller.dart';
import 'package:mountrip/app/utils/adaptive_font/adaptive_font.dart';
import 'package:mountrip/app/utils/helpers/helper_functions.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          floating: false,
          pinned: false,
          snap: false,
          centerTitle: true,
          toolbarHeight: THelperFunctions.screenHeight() * 0.25,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          expandedHeight: THelperFunctions.screenHeight() * 0.38,
          flexibleSpace: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final double top = constraints.biggest.height;
              final double opacityThreshold =
                  kToolbarHeight + MediaQuery.of(context).padding.top + 140;
              final double opacity = (top - opacityThreshold) / 100;
              final double clampedOpacity = opacity.clamp(0.0, 1.0);

              return FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/home-background.jpg',
                      fit: BoxFit.cover,
                      opacity: const AlwaysStoppedAnimation(0.6),
                    ),
                    SafeArea(
                      child: Positioned(
                        top: THelperFunctions.screenHeight() * 0.1,
                        child: Container(
                          width: THelperFunctions.screenWidth() * 0.5,
                          height: THelperFunctions.screenHeight() * 0.2,
                          margin: EdgeInsets.fromLTRB(
                            THelperFunctions.screenWidth() * 0.05,
                            THelperFunctions.screenHeight() * 0.08,
                            THelperFunctions.screenWidth() * 0.05,
                            THelperFunctions.screenHeight() * 0.12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withAlpha(100),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    'assets/images/lewotobi laki laki erupted.jpg',
                                    width:
                                        THelperFunctions.screenWidth() * 0.85,
                                    fit: BoxFit.cover,
                                    height:
                                        THelperFunctions.screenHeight() * 0.16,
                                    color: Colors.black.withAlpha(50),
                                    colorBlendMode: BlendMode.darken,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: THelperFunctions.screenWidth() * 0.05,
                                  child: SizedBox(
                                    width: THelperFunctions.screenWidth() * 0.8,
                                    height:
                                        THelperFunctions.screenHeight() * 0.05,
                                    child: Text(
                                      "Indonesia's Lewotobi Laki-Laki Volcano Erupts; Some Bali Flights Canceled",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: AdaptiveFont.getFontSize(
                                                context, 14),
                                          ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                centerTitle: true,
                title: SafeArea(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 200),
                    opacity: clampedOpacity,
                    child: SizedBox(
                      width: THelperFunctions.screenWidth() * 0.6,
                      child: Text(
                        'Reach New Heights, Explore Without Limits!',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: AdaptiveFont.getFontSize(context, 15),
                              letterSpacing: 1,
                            ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                title: Text('Item $index'),
                subtitle: Text('Subtitle $index'),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
