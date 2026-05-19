/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.game.model;

/**
 *
 * @author dimas
 */
public abstract class Enemy extends Character {
    public Enemy(String nama, double hp, int attackPower) {
        super(nama, hp, attackPower);
    }
 
    @Override
    public abstract void attack(Character target);
}
