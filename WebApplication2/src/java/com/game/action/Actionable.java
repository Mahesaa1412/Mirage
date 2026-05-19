/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.game.action;

import com.game.model.Character;

/**
 *
 * @author dimas
 */
public interface Actionable {
    String getName();
    String perform(Character user, Character target);
}
