import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartlets/utils/utils.dart';

mixin AppAssets {
  static const ASSETS_DIR = "assets";
  static const SVG_DIR = "$ASSETS_DIR/svgs";
  static const IMAGES_DIR = "$ASSETS_DIR/images";
  static const AUTH_SVG_DIR = "$SVG_DIR/auth";
  static const HOME_SVG_DIR = "$SVG_DIR/home";
  static const STUDENT_SVG_DIR = "$HOME_SVG_DIR/student";
  static const PROFILE_SVG_DIR = "$HOME_SVG_DIR/profile";
  static const HOME_IMAGES_DIR = "$IMAGES_DIR/home";
  static const STUDENT_IMAGES_DIR = "$HOME_IMAGES_DIR/student";

  static String anonymous = "$HOME_IMAGES_DIR/default-user.png";
  static String onlineAnonymous =
      "https://firebasestorage.googleapis.com/v0/b/smartlets-x.appspot.com/o/assets%2Fdefault-user.png"
      "?alt=media&token=82e08454-1786-4f0f-989a-03605e489a64";

  static String courseFrame1 = "$STUDENT_IMAGES_DIR/frame_1.jpg";
  static String courseFrame2 = "$STUDENT_IMAGES_DIR/frame_2.png";
  static String courseFrame3 = "$STUDENT_IMAGES_DIR/frame_3.png";
  static String courseFrame4 = "$STUDENT_IMAGES_DIR/frame_4.jpg";
  static String playback = "$STUDENT_IMAGES_DIR/playback.png";

  static SvgPicture mailTo = SvgPicture.asset(
    '$AUTH_SVG_DIR/mail_to.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture doodle = SvgPicture.asset(
    '$SVG_DIR/doodle.svg',
    fit: BoxFit.cover,
    height: App.height,
    width: App.width,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    allowDrawingOutsideViewBox: true,
  );

  static SvgPicture unlockPassword = SvgPicture.asset(
    '$AUTH_SVG_DIR/unlock_password.svg',
    height: App.height * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture emailSent = SvgPicture.asset(
    '$AUTH_SVG_DIR/letter.svg',
    height: App.height * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture upgrade = SvgPicture.asset(
    '$HOME_SVG_DIR/upgrade.svg',
    height: App.width * 0.38,
    width: App.width * 0.38,
    fit: BoxFit.contain,
  );

  static SvgPicture joyride = SvgPicture.asset(
    '$HOME_SVG_DIR/joyride.svg',
    height: App.width * 0.35,
    width: App.width * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture friendsOnline = SvgPicture.asset(
    '$HOME_SVG_DIR/friends_online.svg',
    height: App.width * 0.55,
    width: App.width * 0.55,
    fit: BoxFit.contain,
  );

  static SvgPicture notify = SvgPicture.asset(
    '$HOME_SVG_DIR/notify.svg',
    height: App.width * 0.35,
    width: App.width * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture newsLetter = SvgPicture.asset(
    '$HOME_SVG_DIR/newsletter.svg',
    height: App.width * 0.35,
    width: App.width * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture creditCard = SvgPicture.asset(
    '$HOME_SVG_DIR/credit_card.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture exit = SvgPicture.asset(
    '$HOME_SVG_DIR/exit.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture info = SvgPicture.asset(
    '$HOME_SVG_DIR/info.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture notification = SvgPicture.asset(
    '$HOME_SVG_DIR/notification.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture night = SvgPicture.asset(
    '$HOME_SVG_DIR/night.svg',
    height: 24,
    width: 24,
    fit: BoxFit.contain,
    color: App.theme.accentColor,
  );

  static SvgPicture user = SvgPicture.asset(
    '$HOME_SVG_DIR/user.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook = SvgPicture.asset(
    '$AUTH_SVG_DIR/facebook.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture lock = SvgPicture.asset(
    '$AUTH_SVG_DIR/lock.svg',
    height: App.width * 0.35,
    width: App.width * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture skip = SvgPicture.asset(
    '$STUDENT_SVG_DIR/reply.svg',
    color: Colors.white.withOpacity(0.8),
    fit: BoxFit.contain,
    height: 30,
    width: 30,
  );

  static SvgPicture cardChip = SvgPicture.asset(
    '$HOME_SVG_DIR/card_chip.svg',
    clipBehavior: Clip.antiAlias,
    fit: BoxFit.contain,
    width: 50,
  );

  static SvgPicture coursesSvg = SvgPicture.asset(
    '$STUDENT_SVG_DIR/book_filled.svg',
    fit: BoxFit.contain,
    color: Colors.white,
    height: 25,
    width: 25,
  );

  static SvgPicture projectsSvg = SvgPicture.asset(
    '$STUDENT_SVG_DIR/project-management.svg',
    fit: BoxFit.contain,
    color: Colors.white,
    height: 25,
    width: 25,
  );

  static SvgPicture awardsSvg = SvgPicture.asset(
    '$STUDENT_SVG_DIR/trophy.svg',
    fit: BoxFit.contain,
    color: Colors.white,
    height: 27.5,
    width: 27.5,
  );

  static SvgPicture camera = SvgPicture.asset(
    '$PROFILE_SVG_DIR/camera_colored.svg',
    fit: BoxFit.contain,
    height: 30,
    width: 30,
  );

  static SvgPicture gallery = SvgPicture.asset(
    '$PROFILE_SVG_DIR/gallery_colored_filled.svg',
    fit: BoxFit.contain,
    height: 30,
    width: 30,
  );
}
