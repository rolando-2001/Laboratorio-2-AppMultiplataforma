class Producto{
  
   String nombre;
   double precio;
   String categoria;
  
  Producto(this.nombre, this.precio, this.categoria);
  
void mostrarDetalles() {
  print('nombre: ${nombre} precio: ${precio} categoria: ${categoria}');
}
   
 
}

class Electronico extends Producto{
   int garantia;
   
     Electronico(String nombre, double precio,               String categoria, this.garantia)
      : super(nombre, precio, categoria);
  
  
   @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Garantía: $garantia años');
  }
  
  
} 



void main(){
  
  var producto=Electronico('Celular', 799.99, 'Móviles', 2);
  producto.mostrarDetalles();
}
