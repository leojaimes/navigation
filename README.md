# navigation
 
## Seccion 3
* Manejo de rutas
* Utilzar Get It para llamar a locator en MaterialAPP mediante el GloBalKey State  el cual es instanciando antes que la aplicación sea ejecutada
``` 
void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
```

En el custom_add_menu.dart se encuentra la forma de llamar la ruta

``
 locator<NavigationService>().navigateTo('/stateful')
``
 

 ## Seccion 4
 * Navigation and routing  Navigator 2.0
 * se cambia  el router_generator por el package fluro: https://pub.dev/packages/fluro
 * se definen las rutas con fluro Handlers 
 // más ejercicios con rutas: https://developer.school/how-to-use-fluro-routing-with-flutter/