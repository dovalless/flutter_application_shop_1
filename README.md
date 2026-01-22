# 👟 Sneakers App - Tienda de Zapatos Deportivos con Flutter

<div align="center">

**Aplicación de Comercio Electrónico para Zapatos Deportivos - Experiencia de Compra Premium**

[![Flutter](https://img.shields.io/badge/Flutter-3.19.0+-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-3.3.0+-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![E-commerce](https://img.shields.io/badge/Tienda-Sneakers-FF6B6B?style=for-the-badge)](https://flutter.dev/)
[![Animations](https://img.shields.io/badge/Animaciones-Advanced-4ECDC4?style=for-the-badge)](https://flutter.dev/)
[![Licencia](https://img.shields.io/badge/Licencia-MIT-yellow?style=for-the-badge)](LICENSE)

[🚀 Características](#-características) • [📱 Instalación](#-instalación) • [🏗️ Arquitectura](#️-arquitectura) • [🎨 Diseño](#-diseño-y-ui) • [🛒 Funcionalidades](#-funcionalidades-de-tienda) • [👨‍💻 Autor](#-autor)

</div>

---

## 📱 Descripción del Proyecto

**Sneakers App** es una aplicación de comercio electrónico desarrollada con **Flutter** especializada en la venta de zapatos deportivos (sneakers). Esta aplicación ofrece una experiencia de compra premium con navegación fluida, animaciones sofisticadas y una interfaz de usuario moderna que rivaliza con las mejores aplicaciones de retail en el mercado.

### 🎯 Objetivos del Proyecto
- Crear una **experiencia de compra inmersiva** para sneakers
- Implementar **animaciones avanzadas** para transiciones y efectos visuales
- Desarrollar un **sistema de navegación intuitivo** con barra personalizada
- Construir una **arquitectura escalable** para futuras funcionalidades
- Integrar **tipografías personalizadas** (OpenSans, Quicksand) para branding único
- Implementar **gestión de estado eficiente** para carrito de compras

---

## 🚀 Características

### 🛍️ Funcionalidades Principales
| Característica | Descripción | Estado |
|----------------|-------------|--------|
| **Catálogo de Productos** | Galería interactiva de sneakers | ✅ Implementado |
| **Vista de Detalles** | Información completa con zoom de imágenes | ✅ Implementado |
| **Carrito de Compras** | Gestión de artículos con cantidades | ✅ Implementado |
| **Perfil de Usuario** | Información personal y preferencias | ✅ Implementado |
| **Animaciones Avanzadas** | Transiciones suaves y efectos visuales | ✅ Implementado |
| **Navegación Personalizada** | Barra inferior con iconos personalizados | ✅ Implementado |
| **Búsqueda de Productos** | Filtrado por marca, precio, talla | 🔄 En desarrollo |
| **Modo Oscuro** | Tema alternativo para uso nocturno | ⏳ Planeado |

### 👟 Información por Producto
- **Imágenes múltiples** con vista 360°
- **Detalles técnicos** (material, peso, tecnología)
- **Tallas disponibles** con selección interactiva
- **Reseñas y calificaciones** de usuarios
- **Productos relacionados** y recomendaciones
- **Historial de precios** y disponibilidad

---

## 📱 Instalación

### **Requisitos Previos**
```bash
# Verificar instalación de Flutter
flutter --version
# Flutter 3.19.0 • channel stable • https://github.com/flutter/flutter.git
# Dart 3.3.0 • DevTools 2.31.1

# Verificar dispositivos disponibles
flutter devices
```

### **Pasos de Instalación**
```bash
# 1. Clonar el repositorio
git clone https://github.com/tu-usuario/sneakers_app.git
cd sneakers_app

# 2. Instalar dependencias
flutter pub get

# 3. Ejecutar la aplicación
flutter run

# 4. Para modo desarrollo con hot reload
flutter run --hot-reload
```

### **Dependencias Principales (pubspec.yaml)**
```yaml
name: sneakers_app
description: Tienda de zapatos deportivos con Flutter
version: 1.0.0+1
publish_to: 'none'

environment:
  sdk: '>=3.3.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

  # UI y Navegación
  cupertino_icons: ^1.0.6
  font_awesome_flutter: ^10.5.0
  custom_navigation_bar: ^2.2.0
  
  # Animaciones
  simple_animations: ^5.0.0+2
  supercharged: ^2.1.1
  animations: ^2.0.8
  
  # Gestión de Estado
  provider: ^6.1.1
  get_it: ^7.6.0
  
  # UI Components
  carousel_slider: ^4.2.1
  cached_network_image: ^3.3.0
  shimmer: ^3.0.0
  
  # Utilidades
  intl: ^0.18.1
  uuid: ^4.3.3
  
  # Persistencia
  shared_preferences: ^2.2.2
  hive: ^2.2.3

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.1
```

---

## 🏗️ Arquitectura

### **Estructura del Proyecto**
```
sneakers_app/
├── lib/
│   ├── main.dart                    # Punto de entrada principal
│   ├── animation/                   # Animaciones personalizadas
│   │   ├── fade_animation.dart      # Animación de desvanecimiento
│   │   ├── slide_animation.dart     # Animación de deslizamiento
│   │   └── scale_animation.dart     # Animación de escala
│   ├── data/                        # Datos y mockups
│   │   ├── dummy_data.dart          # Datos de ejemplo
│   │   └── sneakers_data.dart       # Catálogo de productos
│   ├── models/                      # Modelos de datos
│   │   ├── sneaker.dart             # Modelo de zapato
│   │   ├── user.dart                # Modelo de usuario
│   │   ├── cart_item.dart           # Modelo de artículo del carrito
│   │   └── app_state.dart           # Estado global de la app
│   ├── theme/                       # Configuración de temas
│   │   ├── app_theme.dart           # Tema principal
│   │   ├── colors.dart              # Paleta de colores
│   │   ├── text_styles.dart         # Estilos de texto
│   │   └── app_icons.dart           # Iconos personalizados
│   ├── utils/                       # Utilidades y helpers
│   │   ├── constants.dart           # Constantes de la app
│   │   ├── helpers.dart             # Funciones auxiliares
│   │   ├── validators.dart          # Validadores de formularios
│   │   └── formatters.dart          # Formateadores de datos
│   ├── view/                        # Pantallas principales
│   │   ├── home_view.dart           # Vista de inicio
│   │   ├── details_view.dart        # Vista de detalles
│   │   ├── cart_view.dart           # Vista del carrito
│   │   ├── profile_view.dart        # Vista de perfil
│   │   └── favorites_view.dart      # Vista de favoritos
│   └── widget/                      # Widgets reutilizables
│       ├── custom_app_bar.dart      # AppBar personalizado
│       ├── sneaker_card.dart        # Tarjeta de producto
│       ├── bottom_nav_bar.dart      # Barra de navegación
│       ├── size_selector.dart       # Selector de tallas
│       ├── quantity_selector.dart   # Selector de cantidad
│       └── loading_shimmer.dart     # Efecto de carga
├── assets/                          # Recursos estáticos
│   ├── images/                      # Imágenes de productos
│   │   ├── sneakers/                # Zapatos deportivos
│   │   ├── brands/                  # Logos de marcas
│   │   └── ui/                      # Elementos de UI
│   ├── fonts/                       # Fuentes tipográficas
│   │   ├── OpenSans/                # Fuente OpenSans
│   │   └── Quicksand/               # Fuente Quicksand
│   └── icons/                       # Iconos SVG/PNG
├── pubspec.yaml                     # Configuración del proyecto
└── README.md                        # Documentación
```

### **Modelo de Datos Principal**
```dart
// lib/models/sneaker.dart
class Sneaker {
  final String id;
  final String name;
  final String brand;
  final String description;
  final double price;
  final double? discountPrice;
  final List<String> imageUrls;
  final List<int> availableSizes;
  final List<Color> availableColors;
  final Map<String, dynamic> specifications;
  final double rating;
  final int reviewCount;
  final bool isFeatured;
  final bool isNewArrival;
  final DateTime releaseDate;

  const Sneaker({
    required this.id,
    required this.name,
    required this.brand,
    required this.description,
    required this.price,
    this.discountPrice,
    required this.imageUrls,
    required this.availableSizes,
    required this.availableColors,
    required this.specifications,
    this.rating = 0.0,
    this.reviewCount = 0,
    this.isFeatured = false,
    this.isNewArrival = false,
    required this.releaseDate,
  });

  // Calcula el precio con descuento
  double get currentPrice => discountPrice ?? price;

  // Calcula el porcentaje de descuento
  double? get discountPercentage {
    if (discountPrice == null) return null;
    return ((price - discountPrice!) / price * 100).roundToDouble();
  }

  // Verifica disponibilidad en una talla
  bool isSizeAvailable(int size) => availableSizes.contains(size);
}
```

---

## 🎨 Diseño y UI

### **Tema Personalizado**
```dart
// lib/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colores principales de la marca
  static const Color primaryColor = Color(0xFF000000);
  static const Color secondaryColor = Color(0xFFFF6B6B);
  static const Color accentColor = Color(0xFF4ECDC4);
  static const Color backgroundColor = Color(0xFFF8F9FA);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color textPrimary = Color(0xFF212529);
  static const Color textSecondary = Color(0xFF6C757D);

  // Tema claro
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
      background: backgroundColor,
      error: Color(0xFFDC3545),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: surfaceColor,
      elevation: 1,
      centerTitle: true,
      titleTextStyle: GoogleFonts.quicksand(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: textPrimary,
      ),
      iconTheme: const IconThemeData(color: primaryColor),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.quicksand(
        fontSize: 32,
        fontWeight: FontWeight.w800,
        color: textPrimary,
      ),
      displayMedium: GoogleFonts.quicksand(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: textPrimary,
      ),
      bodyLarge: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: textPrimary,
      ),
      bodyMedium: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textSecondary,
      ),
      labelLarge: GoogleFonts.quicksand(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: surfaceColor,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: surfaceColor,
        textStyle: GoogleFonts.quicksand(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
      ),
    ),
    cardTheme: CardTheme(
      color: surfaceColor,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: backgroundColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: accentColor, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      hintStyle: GoogleFonts.openSans(
        color: textSecondary,
        fontSize: 14,
      ),
    ),
  );
}
```

### **Barra de Navegación Personalizada**
```dart
// lib/widget/bottom_nav_bar.dart
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: CustomNavigationBar(
        currentIndex: widget.currentIndex,
        onSelected: widget.onTap,
        borderRadius: const Radius.circular(20),
        elevation: 0,
        isFloating: true,
        selectedColor: AppTheme.primaryColor,
        unSelectedColor: AppTheme.textSecondary,
        strokeColor: AppTheme.primaryColor,
        backgroundColor: AppTheme.surfaceColor,
        items: [
          // Inicio
          CustomNavigationBarItem(
            icon: const Icon(FontAwesomeIcons.house),
            title: const Text('Inicio'),
          ),
          // Explorar
          CustomNavigationBarItem(
            icon: const Icon(FontAwesomeIcons.compass),
            title: const Text('Explorar'),
          ),
          // Carrito con badge
          CustomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(FontAwesomeIcons.bagShopping),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Consumer<CartProvider>(
                    builder: (context, cart, child) {
                      final itemCount = cart.itemCount;
                      if (itemCount == 0) return const SizedBox();
                      return Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: AppTheme.secondaryColor,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                        child: Text(
                          itemCount > 9 ? '9+' : itemCount.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            title: const Text('Carrito'),
          ),
          // Favoritos
          CustomNavigationBarItem(
            icon: const Icon(FontAwesomeIcons.heart),
            title: const Text('Favoritos'),
          ),
          // Perfil
          CustomNavigationBarItem(
            icon: const Icon(FontAwesomeIcons.user),
            title: const Text('Perfil'),
          ),
        ],
      ),
    );
  }
}
```

---

## 🛒 Funcionalidades de Tienda

### **Vista de Catálogo de Productos**
```dart
// lib/view/home_view.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/widget/sneaker_card.dart';
import 'package:sneakers_app/widget/category_chip.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  final List<String> _categories = ['Todos', 'Nike', 'Adidas', 'Jordan', 'New Balance', 'Puma'];
  String _selectedCategory = 'Todos';
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final sneakersProvider = context.watch<SneakersProvider>();
    final filteredSneakers = sneakersProvider.getFilteredSneakers(
      category: _selectedCategory,
      query: _searchQuery,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sneakers Shop',
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () => _showSearchDialog(context),
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.sliders),
            onPressed: () => _showFilterSheet(context),
          ),
        ],
      ),
      body: Column(
        children: [
          // Filtros de categoría
          _buildCategoryFilter(),
          // Lista de productos
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await sneakersProvider.refreshProducts();
              },
              child: _buildProductGrid(filteredSneakers),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryFilter() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final category = _categories[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CategoryChip(
              label: category,
              isSelected: _selectedCategory == category,
              onSelected: () {
                setState(() {
                  _selectedCategory = category;
                });
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildProductGrid(List<Sneaker> sneakers) {
    if (sneakers.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.shoePrints,
              size: 80,
              color: AppTheme.textSecondary.withOpacity(0.3),
            ),
            const SizedBox(height: 16),
            Text(
              'No se encontraron productos',
              style: GoogleFonts.quicksand(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppTheme.textSecondary,
              ),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.75,
      ),
      itemCount: sneakers.length,
      itemBuilder: (context, index) {
        final sneaker = sneakers[index];
        return SneakerCard(
          sneaker: sneaker,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsView(sneaker: sneaker),
              ),
            );
          },
          onFavoriteToggle: () {
            context.read<FavoritesProvider>().toggleFavorite(sneaker.id);
          },
        );
      },
    );
  }

  void _showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Buscar sneakers',
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
            ),
          ),
          content: TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Nombre, marca, modelo...',
              prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onChanged: (value) {
              setState(() {
                _searchQuery = value;
              });
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _searchQuery = '';
                });
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Buscar'),
            ),
          ],
        );
      },
    );
  }

  void _showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Filtros',
                style: GoogleFonts.quicksand(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 24),
              // Aquí irían los filtros adicionales
              // (rango de precios, tallas, colores, etc.)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aplicar filtros'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
```

### **Vista de Detalles del Producto**
```dart
// lib/view/details_view.dart
class DetailsView extends StatefulWidget {
  final Sneaker sneaker;

  const DetailsView({Key? key, required this.sneaker}) : super(key: key);

  @override
  _DetailsViewState createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  int _selectedSize = 0;
  int _selectedColorIndex = 0;
  int _quantity = 1;
  final PageController _pageController = PageController();
  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // AppBar personalizado con imágenes
          SliverAppBar(
            expandedHeight: 400,
            floating: false,
            pinned: true,
            flexibleSpace: _buildImageGallery(),
            actions: [
              IconButton(
                icon: const Icon(FontAwesomeIcons.heart),
                onPressed: () {
                  context.read<FavoritesProvider>().toggleFavorite(widget.sneaker.id);
                },
              ),
              IconButton(
                icon: const Icon(FontAwesomeIcons.shareNodes),
                onPressed: _shareProduct,
              ),
            ],
          ),
          // Contenido del producto
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Información del producto
                  _buildProductInfo(),
                  const SizedBox(height: 24),
                  // Selector de tallas
                  _buildSizeSelector(),
                  const SizedBox(height: 24),
                  // Selector de colores
                  _buildColorSelector(),
                  const SizedBox(height: 24),
                  // Selector de cantidad
                  _buildQuantitySelector(),
                  const SizedBox(height: 32),
                  // Botones de acción
                  _buildActionButtons(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageGallery() {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: widget.sneaker.imageUrls.length,
          onPageChanged: (index) {
            setState(() {
              _currentImageIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _showFullScreenImage(index),
              child: Hero(
                tag: '${widget.sneaker.id}_image_$index',
                child: CachedNetworkImage(
                  imageUrl: widget.sneaker.imageUrls[index],
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: AppTheme.backgroundColor,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            );
          },
        ),
        // Indicador de imágenes
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.sneaker.imageUrls.length,
              (index) => Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentImageIndex == index
                      ? AppTheme.primaryColor
                      : Colors.white.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProductInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                widget.sneaker.name,
                style: GoogleFonts.quicksand(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (widget.sneaker.discountPercentage != null)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppTheme.secondaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '-${widget.sneaker.discountPercentage!.toInt()}%',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          widget.sneaker.brand,
          style: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppTheme.textSecondary,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          widget.sneaker.description,
          style: GoogleFonts.openSans(
            fontSize: 15,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Text(
              '\$${widget.sneaker.currentPrice.toStringAsFixed(2)}',
              style: GoogleFonts.quicksand(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: AppTheme.primaryColor,
              ),
            ),
            if (widget.sneaker.discountPrice != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  '\$${widget.sneaker.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: AppTheme.textSecondary,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        // Botón de añadir al carrito
        Expanded(
          child: ElevatedButton.icon(
            onPressed: _addToCart,
            icon: const Icon(FontAwesomeIcons.cartPlus),
            label: const Text('Añadir al Carrito'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 18),
            ),
          ),
        ),
        const SizedBox(width: 12),
        // Botón de comprar ahora
        Expanded(
          child: ElevatedButton(
            onPressed: _buyNow,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentColor,
              padding: const EdgeInsets.symmetric(vertical: 18),
            ),
            child: const Text('Comprar Ahora'),
          ),
        ),
      ],
    );
  }

  void _addToCart() {
    final cartItem = CartItem(
      sneaker: widget.sneaker,
      size: widget.sneaker.availableSizes[_selectedSize],
      color: widget.sneaker.availableColors[_selectedColorIndex],
      quantity: _quantity,
    );
    
    context.read<CartProvider>().addItem(cartItem);
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Producto añadido al carrito'),
        action: SnackBarAction(
          label: 'Ver carrito',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartView(),
              ),
            );
          },
        ),
      ),
    );
  }
}
```

---

## 👨‍💻 Autor

<div align="center">

**Darwin Manuel Ovalles Cesar**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Perfil_Profesional-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/darwin-manuel-ovalles-cesar-dev/)
[![GitHub](https://img.shields.io/badge/GitHub-Repositorios-black?style=flat&logo=github)](https://github.com/dovalless)

💼 **Desarrollador Flutter & Mobile**  
🎓 **Especialista en Comercio Electrónico y UI/UX**  
👟 **Apasionado por el Diseño de Experiencias de Compra**

*"Este proyecto representa la fusión entre diseño moderno, funcionalidad práctica y experiencia de usuario excepcional. Cada animación, cada transición y cada detalle de interfaz está cuidadosamente diseñado para crear una aplicación de comercio electrónico que no solo vende productos, sino que ofrece una experiencia memorable."*

**#Flutter #Ecommerce #Sneakers #MobileDevelopment #UIUX**

</div>

---

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

```
MIT License
Copyright (c) 2024 Darwin Manuel Ovalles Cesar
```

---

<div align="center">

### ⭐ Si te gustan los sneakers y el buen diseño, ¡dale una estrella a este proyecto! ⭐

### 🚀 Encuentra tus sneakers perfectos con una experiencia de compra premium 🚀

**Desarrollado con ❤️ y 👟 usando Flutter para amantes de los sneakers**

---
*Aplicación de comercio electrónico | Diseño premium | Experiencia de usuario excepcional*

</div>
