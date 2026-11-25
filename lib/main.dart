import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/screens/menu.dart';
import 'package:myportofolio_mobile/services/api_client.dart';
import 'package:myportofolio_mobile/services/auth_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp(apiClient: ApiClient()));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.apiClient, super.key});

  final ApiClient apiClient;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: apiClient),
        ChangeNotifierProvider<AuthState>(create: (_) => AuthState(apiClient)),
      ],
      child: MaterialApp(
        title: 'MyPortfolio',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF069181))
              .copyWith(
                primary: const Color(0xFF248ECC),
                secondary: const Color(0xFF3AAD87),
              ),
          scaffoldBackgroundColor: const Color(0xFFF6FCFD),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF248ECC),
            foregroundColor: Color(0xFFFFE4C2),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3AAD87),
              foregroundColor: const Color.fromARGB(255, 255, 239, 220),
            ),
          ),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
