/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.game.model;

/**
 *
 * @author dimas
 */
public class Slime extends Enemy {
    public Slime() {
        super("Slime Ngawi Selatan", 80.0, 12);
        this.fireResist = 0.15;
    }
 
    @Override
    public void attack(Character target) {
        double dmg = attackPower;
        target.receiveStealthDamage(dmg);
        System.out.printf("%s melempar lendir beracun ke %s!%n", nama, target.getName());
    }
}
