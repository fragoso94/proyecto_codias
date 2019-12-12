
class Operaciones{

  CalcularTotal(vol, abn, des){
    double result = 0.0;
    double total = 0.0;
    double equivalente = 0.0;
    final kg = 1000;

    result = (vol*abn);
    total = (result*des);
    equivalente = (total/kg);

    return [total, equivalente.toStringAsFixed(2)];
  }


}
