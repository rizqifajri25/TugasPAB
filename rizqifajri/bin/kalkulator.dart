class Kalkulator{
  double pertambahan(double a, double b){
    return a + b;
  }

  double pengurangan(double a, double b){
    return a - b;
  }

  double perkalian(double a, double b){
    return a * b;
  }

  double pembagian(double a, double b){
    if (b == 0 || a == 0) {
      throw Exception("Error : Angka Tidak boleh ada nol!");
    }
      return a / b;

  }
}