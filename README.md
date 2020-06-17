# Boilerplate Flutter

## Comandos
- `flutter create myapp` Crea la aplicación flutter en la carpeta `myapp`
- `flutter doctor` Analiza y comprueba que tengas todo preparado para poder utilizar flutter
- `flutter run` Lanza la aplicación
- `flutter test` Lanza todos los tests
- `flutter pub get` Descarga las dependencias
- `flutter pub upgrade` Sube de versión y descarga las dependencias si tienes alguna versión del tipo `^1.0.0`
- `flutter devices` Te lista todos dispositivos conectados

## Estructura
- **android**: Ficheros nativos de android con Kotlin
- **ios**: Ficheros nativos de ios con Swift
- **lib**:
  - **components**: Componentes separados por tipos en este caso
  - **config**: Ficheros de configuración + el ServiceLocator que es el encargado de registrar nuestras implementaciones
  - **navigation**: Es el servicio principal de navegacion entre rutas
  - **pages**: Todas las páginas separadas en carpetas con sus respectivos ficheros: bloc, screen, events y states
- **test**: Todos los tests
  
En este boilerplate no se consume ninguna API, pero recomendaría separar todas las capas en la carpeta /lib 

## Tests
En este caso utilizamos varios paquetes:
- 