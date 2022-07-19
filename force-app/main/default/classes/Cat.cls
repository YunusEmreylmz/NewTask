public class Cat extends Mammal {

    public void meow(){
        system.debug('Cats meow..');
    }
    override
    public void eat(){
        system.debug('Cats eat..');
    }
    
    override
    public void feedwithmilk(){
        system.debug('Cats feed with Milk...');
    }
}