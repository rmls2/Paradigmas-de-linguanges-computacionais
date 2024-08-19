public class Morcego implements Animal {

    double peso;

    public Morcego(double p) {
        peso = p;
    }

    public void nascer(){ System.out.println("nasceu um lindo morcego");}

    @Override
    public void passear() {
        System.out.println("o morceguin passeou");
    }

    @Override
    public void dormir() {
        System.out.println("o morceguin dormiu");
    }

    @Override
    public double pesar() {
        // TODO Auto-generated  stub
        return peso;
    }
}
