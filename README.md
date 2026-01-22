# Sneakers App

Una aplicación Flutter para una tienda de zapatos deportivos (sneakers). Esta app permite a los usuarios explorar, ver detalles y gestionar su bolsa de compras de zapatos.

## Características

- **Navegación personalizada**: Barra de navegación inferior personalizada para una experiencia de usuario fluida.
- **Animaciones**: Animaciones suaves para transiciones y efectos visuales.
- **Modelos de datos**: Estructura de modelos para zapatos, usuarios y estados.
- **Vista de inicio**: Página principal con productos destacados.
- **Vista de detalles**: Página detallada para cada zapato.
- **Bolsa de compras**: Gestión de artículos en la bolsa.
- **Perfil de usuario**: Información y configuración del usuario.
- **Fuentes personalizadas**: Uso de fuentes OpenSans y Quicksand para una tipografía atractiva.
- **Iconos**: Integración con Font Awesome para iconos.

## Instalación

### Prerrequisitos

- [Flutter](https://flutter.dev/docs/get-started/install) instalado en tu sistema.
- Un editor de código como [Visual Studio Code](https://code.visualstudio.com/) con la extensión de Flutter.
- Dispositivo o emulador para ejecutar la app.

### Pasos de instalación

1. Clona este repositorio:
   ```bash
   git clone https://github.com/tu-usuario/sneakers_app.git
   cd sneakers_app
   ```

2. Instala las dependencias:
   ```bash
   flutter pub get
   ```

3. Ejecuta la aplicación:
   ```bash
   flutter run
   ```

## Uso

Una vez que la aplicación esté ejecutándose, puedes:

- Navegar por las diferentes secciones usando la barra de navegación inferior.
- Explorar zapatos en la vista de inicio.
- Ver detalles de un zapato tocando en él.
- Agregar zapatos a la bolsa de compras.
- Ver y gestionar tu perfil.

## Estructura del proyecto

```
lib/
├── main.dart                 # Punto de entrada de la aplicación
├── animation/                # Animaciones personalizadas
├── data/                     # Datos dummy para desarrollo
├── models/                   # Modelos de datos (zapatos, usuario, etc.)
├── theme/                    # Tema personalizado de la app
├── utils/                    # Utilidades y constantes
├── view/                     # Vistas principales (inicio, bolsa, perfil, etc.)
└── widget/                   # Widgets reutilizables
```

## Dependencias

- `cupertino_icons`: Iconos de Cupertino.
- `font_awesome_flutter`: Iconos de Font Awesome.
- `custom_navigation_bar`: Barra de navegación personalizada.
- `simple_animations`: Animaciones simples.
- `supercharged`: Utilidades para animaciones.

## Contribución

Las contribuciones son bienvenidas. Por favor, sigue estos pasos:

1. Haz un fork del proyecto.
2. Crea una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`).
3. Haz commit de tus cambios (`git commit -am 'Agrega nueva funcionalidad'`).
4. Haz push a la rama (`git push origin feature/nueva-funcionalidad`).
5. Abre un Pull Request.

## Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

## Contacto

Si tienes preguntas o sugerencias, puedes contactarme en [tu-email@example.com].

---

Desarrollado con ❤️ usando Flutter.
