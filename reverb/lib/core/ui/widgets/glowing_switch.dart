import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

const double switchHeight = 30.0;
const double switchWidth = 80.0;

class GlowingSwitch extends StatefulWidget {
  const GlowingSwitch(
      {super.key, required this.value, required this.onChanged});

  final bool value;
  final Function() onChanged;

  @override
  State<GlowingSwitch> createState() => _GlowingSwitchState();
}

class _GlowingSwitchState extends State<GlowingSwitch>
    with SingleTickerProviderStateMixin {
  late bool isChecked;
  final Duration _duration = Durations.long1;
  late Animation<Alignment> _animation;
  late AnimationController _animationController;
  bool _isCooldown = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      isChecked = widget.value;
    });
    _animationController =
        AnimationController(vsync: this, duration: _duration);

    _animation =
        AlignmentTween(begin: Alignment.centerLeft, end: Alignment.centerRight)
            .animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Curves.easeInOut,
          reverseCurve: Curves.easeInOut),
    );

    if (isChecked) {
      _animationController.forward();
    }
  }

  void startCooldown() async {
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _isCooldown = false;
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  BoxDecoration getCheckedBoxDecoration() => BoxDecoration(
        color: lightAppColorScheme.black,
        borderRadius: BorderRadius.all(
          Radius.circular(defaultBorderRadius),
        ),
        boxShadow: [
          BoxShadow(
              color: lightAppColorScheme.white.withOpacity(0.6),
              blurRadius: 12,
              offset: Offset(0, 0)),
        ],
      );

  BoxDecoration getUncheckedBoxDecoration() => BoxDecoration(
        color: lightAppColorScheme.lightGray,
        borderRadius: BorderRadius.all(
          Radius.circular(defaultBorderRadius),
        ),
        border: Border.all(
          color: lightAppColorScheme.mediumGray,
          width: 2,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_isCooldown) return;

            widget.onChanged();
            setState(() {
              _isCooldown = true;
              if (_animationController.isCompleted) {
                _animationController.reverse();
              } else {
                _animationController.forward();
              }

              isChecked = !isChecked;
            });

            startCooldown();
          },
          child: Container(
            width: switchWidth,
            height: switchHeight,
            padding: EdgeInsets.symmetric(vertical: 3),
            decoration: (isChecked)
                ? getCheckedBoxDecoration()
                : getUncheckedBoxDecoration(),
            child: Stack(
              children: <Widget>[
                AnimatedSwitcher(
                  duration: Durations.long1,
                  transitionBuilder: (child, animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: (isChecked)
                      ? Align(
                          key: Key("ON"),
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: defaultElementPadding),
                            child: Text(
                              "ON",
                              style: TextStyle(
                                  color: lightAppColorScheme.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        )
                      : Align(
                          key: Key("OFF"),
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: defaultElementPadding),
                            child: Text(
                              "OFF",
                              style: TextStyle(
                                  color: lightAppColorScheme.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                ),
                Align(
                  alignment: _animation.value,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_animationController.isCompleted) {
                          _animationController.reverse();
                        } else {
                          _animationController.forward();
                        }

                        isChecked = !isChecked;
                      });
                    },
                    child: Container(
                      width: switchHeight,
                      height: switchHeight,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (isChecked)
                            ? lightAppColorScheme.white
                            : lightAppColorScheme.mediumGray,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
