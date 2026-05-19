/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.game.action;

import com.game.model.Character;
import java.util.Random;
/**
 *
 * @author dimas
 */
public class StealthAttack implements Actionable {
    private Random rng = new Random();
 
    @Override
    public String getName() {
        return "Stealth Attack";
    }
 
    @Override
    public String perform(Character user, Character target) {
        double damage = user.getAttackPower() * 1.5;
        double roll = rng.nextDouble();
 
        if (roll < 0.10) {
            return "🗡 " + user.getName() + " mencoba Stealth Attack... tapi gagal mengenai target!";
        }
 
        boolean crit = roll < 0.30;
        double finalDamage;
 
        if (crit) {
            finalDamage = damage * 2;
        } else {
            finalDamage = damage;
        }
 
        target.receiveStealthDamage(finalDamage);
 
        if (crit) {
            return "💥 CRITICAL STEALTH! " + user.getName()
                    + " menyerang diam-diam dan memberikan "
                    + String.format("%.1f", finalDamage) + " damage!";
        }
 
        return "🗡 " + user.getName()
                + " menggunakan Stealth Attack dan memberikan "
                + String.format("%.1f", finalDamage) + " damage!";
    }
}

