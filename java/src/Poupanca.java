public class Poupanca {

    private double _saldo;
    private String _numero;

    public Poupanca (String numero, double saldo){
        _saldo = saldo;
        _numero = numero;
    }

    public String getNumero(){
        return _numero;
    }

    public double getSaldo(){
        return _saldo;
    }

    public double creditar(double valor){
        _saldo = _saldo + valor;
        return _saldo;
    }

    public double debitar(double valor) {
        _saldo = _saldo - valor;
        return _saldo;
    }

    public double renderJuros(double taxa){
        taxa = taxa/100;
        return this.creditar(_saldo*taxa);

    }

}



