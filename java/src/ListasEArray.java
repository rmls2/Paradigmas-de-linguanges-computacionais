// import java.util.*;

public class ListasEArray {
    
    public static void main(String[] args) {
        Conta conta;

        conta = new Conta("143", 0.0);
        System.out.println(".()" + conta.getNumero());

        Conta arrayContas [] = {conta};
        System.out.println("-------------------- Contas1 -----------------------------");

        for (int i = 0; i < arrayContas.length; i++) {
            Conta continha = arrayContas[i];
            System.out.println(continha.getSaldo());
        
        }

        System.out.println("---------------------Contas2------------------------------");

        Conta conta2 = new Conta("152-4", 100.2);

        Conta [] arrayContas2 = new Conta[5];
        arrayContas2[0] = conta;
        arrayContas2[1] = conta2;

        for (int i = 0; i < arrayContas2.length; i++) {
            Conta continha = arrayContas2[i];
            System.out.println(continha.getSaldo());
        
        }

    //    ArrayList<Conta> arrayContaDinamico = new ArrayList<>(); 
    }
}
