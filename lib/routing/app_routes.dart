import 'package:go_router/go_router.dart';
import 'package:llm_chatbot/screen/profile_screen.dart';
import 'package:llm_chatbot/screen/sigin_in_screen.dart';

enum AppRouter {
  home,
  login,
  register,
  profile,
  settings,
  notFound,
}


final routes = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,

  
  
  routes: [
    GoRoute(
      path: '/',
       name: AppRouter.login.name,
       builder: (context, state) => const SiginIn(),
        ),
         GoRoute(
      path: '/profile',
       name: AppRouter.profile.name,
       builder: (context, state) => const ProfileScreen(),
        ),
  ]);