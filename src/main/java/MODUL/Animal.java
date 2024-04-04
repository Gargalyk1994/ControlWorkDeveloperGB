package MODUL;

import java.util.List;

public interface Animal {

    int getId();

    String getName();

    void setBirthDay(String date);

    String getBirthDay();

    void setName(String name);

    void addCommand(String newCommand);

    void removeCommand(String command);

    List<String> getCommandList();

    int getCommandCount();
}