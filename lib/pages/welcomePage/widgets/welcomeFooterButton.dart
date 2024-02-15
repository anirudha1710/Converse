import 'package:converse/config/images.dart';
import 'package:converse/config/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomeFooter extends StatelessWidget {
  const WelcomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      onSubmit: () {

      },
      sliderButtonIcon: Container(
        width: 25,
        height: 25,
        child: SvgPicture.asset(
          AssetsImage.plugIconsSVG,
          width: 25,
        ),
      ),
      text: WelcomePageString.slideToStart,
      textStyle: Theme.of(context).textTheme.labelLarge,
      animationDuration: Duration(seconds: 1),
      sliderRotate: false,
      submittedIcon: SvgPicture.asset(
        AssetsImage.connetIconsSVG,
        width: 25,
      ),
      innerColor: Theme.of(context).colorScheme.primary,
      outerColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }
}
