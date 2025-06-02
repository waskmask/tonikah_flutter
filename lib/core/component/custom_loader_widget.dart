import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../helper/constants.dart';


class CustomLoaderWidget extends StatelessWidget {
  const CustomLoaderWidget({super.key,this.color = kAppColor});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: color));
  }
}

class CategoryLoaderWidget extends StatelessWidget {
  const CategoryLoaderWidget({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      child: Row(
        children: List.generate(
          8,
              (index) => Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade200,
              highlightColor: Colors.grey.shade50,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10.0)),
                child: const SizedBox(
                  height: 80,
                  width: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchLoaderWidget extends StatelessWidget {
  const SearchLoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(10, (index) => Shimmer.fromColors(
        baseColor: Colors.grey.shade200,
        highlightColor: Colors.grey.shade50,
        child: Container(
          margin: const EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10.0)),
          child: SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      )),
    );
  }
}

class DashboardLoader extends StatelessWidget {
  const DashboardLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 25.0),
              Shimmer.fromColors(
                baseColor: Colors.grey.shade200,
                highlightColor: Colors.grey.shade50,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                height: 150.0,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade200,
                  highlightColor: Colors.grey.shade50,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 12),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              Shimmer.fromColors(
                baseColor: Colors.grey.shade200,
                highlightColor: Colors.grey.shade50,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisExtent: 130),
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey.shade200,
                      highlightColor: Colors.grey.shade50,
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 12),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    );
                  }),
              const SizedBox(height: 25.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                child: Row(
                  children: List.generate(
                    8,
                        (index) => Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey.shade200,
                        highlightColor: Colors.grey.shade50,
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const SizedBox(
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) =>  Shimmer.fromColors(
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade50,
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10.0)),
              child: const SizedBox(
                height: 50,
                width: 50,
              ),
            ),
          )),
        ),
      ),
    );
  }
}

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade200,
      highlightColor: Colors.grey.shade50,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10.0)),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}