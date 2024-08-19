public class Zebra implements Animal {
    double peso;

    public Zebra(double peso_){
        peso = peso_;
    }

    @Override
    public double pesar() {
        // TODO Auto-generated method stub
        return peso;
    }

    @Override
    public void nascer() {
        // TODO Auto-generated method stub
        System.out.println("Nasceu uma zebrinha igual ao martin de madagascar!");
    }

    @Override
    public void dormir() {
        // TODO Auto-generated method stub
        System.out.println("a zebrinha dormiu!");
    }

    @Override
    public void passear() {
        // TODO Auto-generated method stub
        System.out.println("A zebrinha foi passear!");
    }
    
}
