/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.game.model;

import com.game.action.Actionable;
import com.game.action.FireSlash;
import com.game.action.IceSpike;
import com.game.action.StealthAttack;
import java.util.ArrayList;
/**
 *
 * @author dimas
 */
public class Player extends Character {
    private ArrayList<Actionable> actions;
 
    public Player(String name, double hp, int attackPower) {
        super(name, hp, attackPower);
        actions = new ArrayList<>();
        actions.add(new FireSlash());
        actions.add(new IceSpike());
        actions.add(new StealthAttack());
    }
 
    @Override
    public void attack(Character target) {
        double damage = attackPower;
        target.receiveStealthDamage(damage);
        System.out.printf("%s menyerang %s dengan Basic Attack — %.1f damage!%n",
                nama, target.getName(), damage);
    }
 
    public ArrayList<Actionable> getActions() {
        return actions;
    }
}
