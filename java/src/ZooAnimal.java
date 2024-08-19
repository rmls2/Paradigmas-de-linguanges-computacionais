public class ZooAnimal {
    
    static public void cicloDeVida(Animal animal){
        animal.nascer();
        animal.dormir();
        animal.passear();
        animal.pesar();
    }

    static public void main(String args []){

        Morcego moc = new Morcego(10.5);
        Zebra zeb = new Zebra(100.5);
        
        cicloDeVida(moc);
        cicloDeVida(zeb);
    }


}
