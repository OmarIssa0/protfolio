import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_protfolio/app_localization.dart';
import 'package:my_protfolio/core/utils/my_color.dart';
import 'package:my_protfolio/cubit/locale_cubit.dart';
import 'package:my_protfolio/features/home/presentation/view/home_view.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => LocaleCubit()..getSavedLanguage(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocaleCubit()..getSavedLanguage(),
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) {
          if (state is ChangeLocaleState) {
            return MaterialApp(
              locale: state.locale,
              supportedLocales: const [Locale('en'), Locale('ar')],
              localizationsDelegates: const [
                AppLocalization.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              // darkTheme: ThemeData.dark(
              //   useMaterial3: true,
              // ),
              theme: ThemeData(
                scaffoldBackgroundColor: MyColor.kBackGroundScreen,
                useMaterial3: true,
                textTheme: const TextTheme(),
                fontFamily:
                    state.locale.languageCode == 'en' ? 'ReadexPro' : 'Tajawal',
              ),
              debugShowCheckedModeBanner: false,
              home: const HomeView(),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
