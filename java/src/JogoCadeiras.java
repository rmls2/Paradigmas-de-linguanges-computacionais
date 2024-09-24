//Robert Miller Lino dos Santos (rmls2)

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

public class JogoCadeiras {
    public static void main(String[] args) {
        //scaner pra poder pega o input do usuário
        Scanner scanner = new Scanner(System.in);
        System.out.print("Digite o número de jogadores: ");
        int N = scanner.nextInt();
        scanner.nextLine(); 

        List<String> jogadores = new ArrayList<>();

        
        for (int i = 1; i <= N; i++) {
            jogadores.add("Jogador " + i);
        }

        Random random = new Random();

        while (jogadores.size() > 1) {
            // embaralha a ordem dos jogadores p/ que a ordem seja aleatória a cada rodada
            Collections.shuffle(jogadores);

            int cadeiras = jogadores.size() - 1;
            boolean[] ocupadas = new boolean[cadeiras];
            List<String> sentados = new ArrayList<>();

            for (String jogador : jogadores) {
                int cadeira;
                do {
                    cadeira = random.nextInt(cadeiras); 
                } while (ocupadas[cadeira]); 

                ocupadas[cadeira] = true; 
                sentados.add(jogador); 
                if (sentados.size() == cadeiras) {
                    break; 
                }
            }

            //encontrando o jogador q não conseguiu sentar
            String eliminado = null;
            for (String jogador : jogadores) {
                if (!sentados.contains(jogador)) {
                    eliminado = jogador;
                    break;
                }
            }

            System.out.println(eliminado + " foi eliminado.");
            jogadores.remove(eliminado);
        }

        System.out.println(jogadores.get(0) + " foi o vencedor!");
        scanner.close();
    }
}
