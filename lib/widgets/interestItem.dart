import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class InterestItem extends StatefulWidget {
  InterestItem({super.key, required this.index, required this.interest, required this.updateInterest,required this.isAnInterest});
  final String interest;
  void Function(String interest) updateInterest;
  bool Function(String interest) isAnInterest;
  int index;

  @override
  State<InterestItem> createState() => _InterestItemState();
}

class _InterestItemState extends State<InterestItem> with SingleTickerProviderStateMixin{
  late AnimationController _animationController ;
  late Animation _animation;

  @override
  void initState() {
    _animationController=AnimationController(
      vsync:this,
      duration: Duration(milliseconds: 300)
    );
var curve=CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut);
    _animation=Tween<double>(begin: 1.0,end: 0.0).animate(curve);
   Future.delayed(Duration(milliseconds: widget.index*100),() {
      _animationController.forward();
   },);
    
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return ScaleTransition(
     scale: _animationController,
      child: DottedBorder(
                   
                    borderType: BorderType.RRect,
                    padding: EdgeInsets.all(0),
                    strokeWidth: 2,
                    dashPattern: widget.isAnInterest(widget.interest) ? [double.infinity] : [4],
                    radius: Radius.circular(20),
                    color: Color.fromRGBO(101, 12, 1, 0.5),
                    child: GestureDetector(
                      onTap: () {
                        widget.updateInterest(widget.interest);
                      },
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(
                        width: 0,
                        color: Colors.transparent
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color:  widget.isAnInterest(widget.interest)
                              ? const Color.fromRGBO(101, 12, 1, 0.5)
                              : Theme.of(context).scaffoldBackgroundColor,),
                       
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 6),
                        child: Text(
                        widget.interest,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: widget.isAnInterest(widget.interest)
                                ? Colors.white
                                : Colors.black),
                      ),
                      ),
                      
                     
                    ),
                  ),
    );
  }
}