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
public class FireSlash implements Actionable {
    private Random rng = new Random();
 
    @Override
    public String getName() {
        return "Fire Slash";
    }
 
    @Override
    public String perform(Character user, Character target) {
        boolean miss = rng.nextDouble() < 0.15;
 
        if (miss) {
            return "🔥 " + user.getName() + " melancarkan Fire Slash... tapi apinya padam!";
        }
 
        double finalDamage = user.getAttackPower() * 1.3;
        target.receiveFireDamage(finalDamage);
 
        return "🔥 " + user.getName()
                + " melancarkan Fire Slash dan memberikan "
                + String.format("%.1f", finalDamage) + " damage!";
    }
}
