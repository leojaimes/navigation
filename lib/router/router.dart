import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();
  static void configureRoutes() {
    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: _providerHandler, transitionType: TransitionType.fadeIn);

    router.notFoundHandler = _pageNotFound;
  }

  static Handler _counterHandler =
      new Handler(handlerFunc: (context, Map<String, List<String>> list) {
    print(list['base']?[0]);
    return CounterView(base: list['base']?[0]);
  });

  static Handler _providerHandler =
      new Handler(handlerFunc: (context, Map<String, List<String>> list) {


      
    return CounterProviderView();
  });

  static Handler _pageNotFound = Handler(handlerFunc: (_, __) => View404());
}
