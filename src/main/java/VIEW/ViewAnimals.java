package VIEW;

import SERVICE.ListAnimals;

public class ViewAnimals {
    ListAnimals listAnimals = new ListAnimals();
    public void printAllAnimals(){
        System.out.println(listAnimals.createListAnimals());
    }
}
