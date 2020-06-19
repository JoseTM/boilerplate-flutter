# Boilerplate Flutter

## Comandos
- `flutter create myapp` Crea la aplicación flutter en la carpeta `myapp`
- `flutter doctor` Analiza y comprueba que tengas todo preparado para poder utilizar flutter
- `flutter run` Lanza la aplicación
- `flutter test` Lanza todos los tests
- `flutter devices` Te lista todos dispositivos conectados
- `flutter pub get` Descarga las dependencias
- `flutter pub upgrade` Sube de versión y descarga las dependencias si tienes alguna versión del tipo `^1.0.0`
- `flutter pub run build_runner watch --delete-conflicting-outputs` Lanza el paquete `build_runner` para autogenerar ficheros, en nuestro boilerplate se utiliza para generar los eventos y estados, el output se especifica al principio del fichero con un `part 'output.g.dart';`

## Estructura
- **android**: Ficheros nativos de Android con Kotlin
- **ios**: Ficheros nativos de iOS con Swift
- **lib**:
  - **components**: Componentes separados por tipos en este caso
  - **config**: Ficheros de configuración + el ServiceLocator que es el encargado de registrar nuestras implementaciones
    - **injections**: Ficheros donde se injectan las dependencias de, en este caso, los bloc y los servicios si fuera necesario
  - **pages**: Todas las páginas separadas en carpetas con sus respectivos ficheros: bloc, screen, events y states
  - **services**: Todos los servicios que se consumirán
- **test**: Todos los tests
