//usando herança

public class Poupancah extends Conta {
    public Poupancah(String numero, double _saldo){
        super(numero, _saldo);
    }

    public void renderJuros(double taxa){
        taxa = taxa/100;
        double juros = this.getSaldo()*taxa;
        this.creditar(juros);
    }
}
