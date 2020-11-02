import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/parent/domain/entities/premium_feature.dart';
import 'package:smartlets/features/parent/presentation/manager/faq_pp_cubit.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class PaymentIndexPage extends StatelessWidget with AutoRouteWrapper {
  final List<PremiumFeature> premiumFeatures = PremiumFeature.list;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => FaqPpCubit()..init(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: BlocProvider.of<FaqPpCubit>(context).state.controller,
                padding: EdgeInsets.zero.copyWith(top: App.mediaQuery.padding.top),
                clipBehavior: Clip.antiAlias,
                child: SafeArea(
                  top: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppAssets.upgrade,
                      //
                      VerticalSpace(height: App.height * 0.06),
                      //
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: App.width * 0.1),
                        child: AutoSizeText(
                          "Upgrade to Pro ${AppStrings.appName} For A Better Experience",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          maxLines: 2,
                          minFontSize: 16,
                          softWrap: true,
                          wrapWords: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.03),
                      //
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: premiumFeatures
                            .map(
                              (feature) => Flexible(
                                child: ListTile(
                                  leading: Icon(feature.icon, color: feature.color),
                                  title: AutoSizeText(
                                    feature.description,
                                    softWrap: true,
                                    wrapWords: true,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.03),
                      //
                      MkButton(
                        text: "Start 14 Days Free Trial",
                        exteriorPadding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
                        onPressed: () => inner(context).pushPaymentMethodPage(),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.02),
                      //
                      MkButton(
                        text: "Not Now",
                        exteriorPadding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        elevation: 0.0,
                        highlightElevation: 0.0,
                        textColor: Helpers.optionOf(Colors.black87, Colors.white),
                        onPressed: () {},
                      ),
                      VerticalSpace(height: App.height * 0.08),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: BlocBuilder<FaqPpCubit, FaqPpState>(
              builder: (context, __) => Visibility(
                visible: context.bloc<FaqPpCubit>().state.isVisible,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: AutoSizeText(
                        "FAQ",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                    //
                    GestureDetector(
                      onTap: () {},
                      child: AutoSizeText(
                        "Privacy Policy",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
