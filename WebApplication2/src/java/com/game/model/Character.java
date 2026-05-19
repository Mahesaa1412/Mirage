/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.game.model;
/**
 *
 * @author dimas
 */
public abstract class Character {
    protected String nama;
    protected double hp;
    protected int attackPower;
    protected double fireResist;
    protected double iceResist;

    public Character(String nama, double hp, int attackPower) {
        this.nama = nama;
        this.hp = hp;
        this.attackPower = attackPower;
        this.fireResist = 0.0;
        this.iceResist = 0.0;
    }
    
    public abstract void attack(Character target);
    
    public void receiveFireDamage(double damage){
        double totalDamage = damage * (1 - fireResist);
        hp -= totalDamage;
        System.out.printf("%s terkena Fire Damage %.1f (ketahanan terhadap api: %.0f%%) → HP sekarang: %.1f%n", nama, totalDamage, fireResist * 100, hp);
    }
    
    public void receiveIceDamage(double damage){
        double totalDamage = damage * (1 - iceResist);
        hp -= totalDamage;
        System.out.printf("%s terkena Ice Damage %.1f (ketahanan terhadap es: %.0f%%) → HP sekarang: %.1f%n", nama, totalDamage, iceResist * 100, hp);
    }
    
    public void receiveStealthDamage(double damage) {
        hp -= damage;
        System.out.printf("%s terkena Stealth Damage %.1f → HP sekarang: %.1f%n", nama, damage, hp);
    }
    
    public boolean isAlive() {
        return hp > 0;
    }
 
    public String getName() { 
        return nama; 
    }
    
    public double getHp() {
        return hp; 
    }
    
    public int getAttackPower() { 
        return attackPower; 
    }
}
