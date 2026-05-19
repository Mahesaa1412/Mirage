/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.game.model;

/**
 *
 * @author dimas
 */
public class PenyihirKuno extends Enemy {
    public PenyihirKuno() {
        super("Penyihir Kegelapan Ngawi Selatan", 160.0, 25);
        this.fireResist = 0.30;
        this.iceResist  = 0.30;
    }
 
    @Override
    public void attack(Character target) {
        double dmg = attackPower;
        target.receiveFireDamage(dmg);
        System.out.printf("%s merapalkan mantra gelap ke %s!%n", nama, target.getName());
    }
}
