class Producto {
  String nombre;
  double precio;
  String categoria;

  Producto(this.nombre, this.precio, this.categoria);

  void mostrarDetalles() {
    print('Nombre: $nombre, Precio: $precio, Categoría: $categoria');
  }
}

class Electronico extends Producto {
  int garantia;

  Electronico(String nombre, double precio, String categoria, this.garantia)
      : super(nombre, precio, categoria);

  
  Electronico.soloNombreYPrecio(String nombre, double precio, {this.garantia = 1})
      : super(nombre, precio, 'Móviles');

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Garantía: $garantia años');
  }
}

void main() {
  var producto = Electronico('Celular', 799.99, 'Móviles', 2);
  producto.mostrarDetalles();

  var producto2 = Electronico.soloNombreYPrecio('Tablet', 499.99);
  producto2.mostrarDetalles();
}
