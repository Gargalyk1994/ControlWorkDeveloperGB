package MODUL;

import MODUL.Animal;
import MODUL.Pet;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Horse extends PackAnimal implements Animal {
    private int id;

    protected String name;
    protected String birthDate;
    protected List<String> commands;


    public Horse(int id, String name, String birthDate, List<String> commands) {
        this.id = id;
        this.name = name;
        this.birthDate = birthDate;
        this.commands = commands;
    }

    @Override
    public int getId(){
        return this.id;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public void addCommand(String newCommand) {
        if (commands.stream().filter(x -> x.equals(newCommand)).findFirst().isEmpty()) {
            return;
        }
        commands.add(newCommand);
    }

    @Override
    public void removeCommand(String command) {
        commands.remove(command);
    }

    @Override
    public List<String> getCommandList() {
        return commands;
    }

    @Override
    public int getCommandCount() {
        return commands.size();
    }

    @Override
    public void setBirthDay(String date) {
        this.birthDate = date;
    }

    @Override
    public String getBirthDay() {
        return this.birthDate;
    }

    @Override
    public String toString() {
        return "Лощадь {" +
                "id: " + id +
                ", имя: " + name + '\'' +
                ", день рождения" + birthDate +
                ", команды" + commands +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Horse horse = (Horse) o;
        return Objects.equals(name, horse.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name);
    }
}