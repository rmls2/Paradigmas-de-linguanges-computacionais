public class SIException extends Exception {
    private double saldo;
    private String numero;

    public SIException(double saldo, String numero) {
        super ("Saldo Insuficiente, ta liso é? !");
        this.saldo = saldo;
        this.numero = numero;
    }

    public double getSaldo() {
        return saldo;
    }

    public String getNumero() {
        return numero;
    }
}
