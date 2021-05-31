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
 