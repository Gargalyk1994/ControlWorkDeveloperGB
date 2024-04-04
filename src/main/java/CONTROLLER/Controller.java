package CONTROLLER;

import SERVICE.ListAnimals;
import VIEW.ViewAnimals;
import VIEW.ViewToyMarket;

public class Controller {
    ListAnimals listAnimals = new ListAnimals();
    ViewAnimals view = new ViewAnimals();

    public void createToys(){
        listAnimals.createListAnimals();
        view.printAllAnimals();
    }

    public void frequencyOfWeightLoss(){

    }
}
