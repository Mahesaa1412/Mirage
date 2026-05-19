/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.game.model;

/**
 *
 * @author dimas
 */
public class Mummy extends Enemy {
    public Mummy() {
        super("Mummy Roh Ngawi", 120.0, 18);
        this.iceResist = 0.50;
    }
 
    @Override
    public void attack(Character target) {
        double dmg = attackPower;
        target.receiveIceDamage(dmg);
        System.out.printf("%s menghempaskan hawa dingin ke %s!%n", nama, target.getName());
    }
}
