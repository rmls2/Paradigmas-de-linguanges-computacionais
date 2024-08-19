public class Conta {

    private double _saldo;
    private String _numero;

    public Conta(String numero, double saldo){
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

    //definindo método com exceção
    public void debitar(double valor ) 
                        throws SIException {

        if (valor <= _saldo) {
            _saldo = _saldo - valor;
        }
       else {
            SIException e;
            e = new SIException(_saldo, _numero);
            throw e;
        }
    }

    

}



