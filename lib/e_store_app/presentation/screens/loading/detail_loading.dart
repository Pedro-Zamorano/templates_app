import 'package:flutter/material.dart';
import 'package:practice_app/e_store_app/presentation/screens/loading/shimmer_base.dart';

class DetailLoading extends StatelessWidget {
  const DetailLoading({super.key});

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ShimmerBase(
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: boxDecoration,
            ),
          ),
          SizedBox(height: 10),

          ShimmerBase(
            child: Container(
              width: double.infinity,
              height: 22,
              decoration: boxDecoration,
            ),
          ),
          SizedBox(height: 10),

          ShimmerBase(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 14,
                  decoration: boxDecoration,
                ),
                SizedBox(height: 2),
                Container(
                  width: double.infinity,
                  height: 14,
                  decoration: boxDecoration,
                ),
                SizedBox(height: 2),
                Container(
                  width: double.infinity,
                  height: 14,
                  decoration: boxDecoration,
                ),
                SizedBox(height: 2),
                Container(
                  width: double.infinity,
                  height: 14,
                  decoration: boxDecoration,
                ),
                SizedBox(height: 2),
                Container(
                  width: double.infinity,
                  height: 14,
                  decoration: boxDecoration,
                ),
                SizedBox(height: 2),
                Container(
                  width: double.infinity,
                  height: 14,
                  decoration: boxDecoration,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: ShimmerBase(
                  child: Container(
                    width: double.infinity,
                    height: 20,
                    decoration: boxDecoration,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ShimmerBase(
                  child: Container(
                    width: double.infinity,
                    height: 20,
                    decoration: boxDecoration,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),

          ShimmerBase(
            child: Container(
              width: double.infinity,
              height: 20,
              decoration: boxDecoration,
            ),
          ),

          Spacer(),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ShimmerBase(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: boxDecoration,
                      ),
                    ),
                    ShimmerBase(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: boxDecoration,
                      ),
                    ),
                    ShimmerBase(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: boxDecoration,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ShimmerBase(
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: boxDecoration,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
