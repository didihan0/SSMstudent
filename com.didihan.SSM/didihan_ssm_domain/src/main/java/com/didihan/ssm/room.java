package com.didihan.ssm;

public class room {
    private int number;
    private String name;
    private int room;

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    public room(int number, String name, int rom) {
        this.number = number;
        this.name = name;
        this.room = rom;
    }

    public room() {
    }

    @Override
    public String toString() {
        return "room{" +
                "number=" + number +
                ", name='" + name + '\'' +
                ", rom=" + room +
                '}';
    }
}
