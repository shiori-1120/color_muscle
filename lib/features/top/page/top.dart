import 'package:mottaina_eat/features/top/view_model.dart';
import 'package:flutter/material.dart';
import 'package:mottaina_eat/components/primary_app_bar.dart';
import 'package:mottaina_eat/features/top/components/top_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(topViewModelProvider);
    return state.when(
      data: (data) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://lh3.googleusercontent.com/pw/AP1GczMPy-QZej8xgkARCbjBi4T3rcn2FCINJ1IvFB4RQUKsQ6Lki5568dmqMYrZ4Trh_Rmwg4Cv2y_SF-MzaMuz6VCuBnEbyPBDl2M4Wq3_T9ZWOcseF81Y15-yYUnT5p_NxIS3oKXgHuWWdVc0Nop_WzW8qg=w598-h846-s-no-gm?authuser=0'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const PrimaryAppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Row(  crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                   
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width * 0.93,
                    color: const Color.fromARGB(204, 255, 255, 255),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.width * 0.3,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Image.network(
                                    'https://lh3.googleusercontent.com/pw/AP1GczMj1cq2im7y0Icnpo0AgvbniOy672ppgj6YBJBwJaoLRYmot58_1hxZl5NAqc1kpXpzCjPqD5owFpty0yUSgLB9Mg99jlY-H1UYSKHEUV1i-Dd9MxFJ1vVLUYYCykJOMhciAWFatL__-_FdAT00V8mxMA=w384-h384-s-no-gm?authuser=0')),
                            Text('ぽちぽちのつどい'),
                            Container(
                              alignment: Alignment.center,
                              color: Color.fromARGB(204, 207, 216, 255),
                              child: Text('ここにはサークルの簡単な説明が入ります'),
                            ),
                          ],
                        ),
                        Text('×'),
                        Container(
                            alignment: Alignment.center,
                            height: 100,
                            width: 100,
                            child: Image.network(
                                'https://lh3.googleusercontent.com/pw/AP1GczMj1cq2im7y0Icnpo0AgvbniOy672ppgj6YBJBwJaoLRYmot58_1hxZl5NAqc1kpXpzCjPqD5owFpty0yUSgLB9Mg99jlY-H1UYSKHEUV1i-Dd9MxFJ1vVLUYYCykJOMhciAWFatL__-_FdAT00V8mxMA=w384-h384-s-no-gm?authuser=0'))
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(  crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                   
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.93,
                    color: Colors.white,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ここにはクイズの簡単な説明が入ります'),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: TopButton(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(  crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                   
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.93,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 100,
                              width: 100,
                              child: Image.network(
                                  'https://lh3.googleusercontent.com/pw/AP1GczMj1cq2im7y0Icnpo0AgvbniOy672ppgj6YBJBwJaoLRYmot58_1hxZl5NAqc1kpXpzCjPqD5owFpty0yUSgLB9Mg99jlY-H1UYSKHEUV1i-Dd9MxFJ1vVLUYYCykJOMhciAWFatL__-_FdAT00V8mxMA=w384-h384-s-no-gm?authuser=0'),
                            ),
                            Text('アプリのタイトル')
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Text('ここにはアプリの簡単な説明が入ります'),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    final webUrl = Uri.parse(
                                        'https://zenn.dev/k9i/articles/e95423b1542a7c');
                                    launchUrl(webUrl);
                                  },
                                  child: Text('iOS'),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      error: (error, stackTrace) => const SizedBox(),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
