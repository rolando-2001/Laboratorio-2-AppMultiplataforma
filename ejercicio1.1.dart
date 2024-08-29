class Producto{
  
   String nombre;
   double precio;
   String categoria;
  
  Producto(this.nombre, this.precio, this.categoria);
  
void mostrarDetalles() {
  print('nombre: ${nombre} precio: ${precio} categoria: ${categoria}');
}
   
 
}


void main(){
  
  var producto=Producto('Manzana',5.3,'fruta');
  producto.mostrarDetalles();
  
}
