// import java.util.*;

public class Banco {

    private Conta [] contas;
    private int indiceC;
    private Poupancah [] poupancas;
    private int indiceP;
    
    public Banco(int tamanhoConta, int tamanhoPoupanca){

        contas = new Conta[tamanhoConta];
        poupancas = new Poupancah [tamanhoPoupanca];
    }

    public void cadastrarConta( Conta c){
        contas[indiceC] = c;
        indiceC = indiceC++;
    }

    public void cadastrarPoupanca( Poupancah p){
        poupancas[indiceP] = p;
        indiceP = indiceP++;
    }


    private Conta procurarConta(String numero) throws CNEException {
        int i = 0;
        boolean achou = false;
        Conta resposta = null;

        while ((!achou) && (i < indiceC)) {
            if (contas[i].getNumero().equals(numero)) {
                achou = true;
                resposta = contas[i];
        }   
            else {i = i + 1;} 
        }
        
        if (!achou)
            throw new CNEException();

        return resposta;
    }

    public static void main(String[] args) throws SIException {
        Banco banco1 = new Banco(10, 10);
        Poupancah poup1 = new Poupancah("1234-5", 100.0);
        Conta conta1 = new Conta("123-4", 500.0);

        System.out.println(poup1.getNumero());
        System.out.println(conta1.getNumero());


        banco1.cadastrarConta(conta1);
        banco1.cadastrarPoupanca(poup1);
        System.out.println("---------------");

        try {
            conta1.debitar(600.0);
            System.out.println(conta1.getSaldo());
            
        } catch (SIException e1) {
            // TODO: handle exception
            System.out.println(e1.getMessage());
            System.out.println("Vai dormir, liso!");
        }

        // catch (CNEException e2) {
        //     System.out.println(e2.getMessage());
        // }

        finally {
            System.out.println("Boa noite!");
        }
        
    }
}


