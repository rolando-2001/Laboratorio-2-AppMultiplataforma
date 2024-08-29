abstract class EmpleadoTienda {
  String nombre;
  double horasTrabajadas;

  EmpleadoTienda(this.nombre, this.horasTrabajadas);

 
  double calcularSalario();

 
  String mostrarDetalles() {
    return 'Empleado: $nombre, Horas trabajadas: $horasTrabajadas';
  }
}

class Vendedor extends EmpleadoTienda {
  Vendedor(String nombre, double horas) : super(nombre, horas);

  @override
  double calcularSalario() {
    return horasTrabajadas * 10;
  }
  
}

class Cajero extends EmpleadoTienda {
  Cajero(String nombre, double horas) : super(nombre, horas);

  @override
  double calcularSalario() {
    return horasTrabajadas * 8;
  }


}

void main() {
  EmpleadoTienda vendedor = Vendedor('Juan', 40);
  EmpleadoTienda cajero = Cajero('Ana', 35);

  print(vendedor.mostrarDetalles());
  print('Salario: \$${vendedor.calcularSalario()}');

  print(cajero.mostrarDetalles());
  print('Salario: \$${cajero.calcularSalario()}');
}
