/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geekonn.validaciones;


/**
 *
 * @author Alumnos
 */
public class Validaciones {
    public int revisarSoloCaracteres(String nombreUsuario){
    if(esPalabraCaracteres(nombreUsuario)){
    System.out.println("Es una palabra");
    return 1;
    } else{
    System.out.println("Lo siento, la palabra contiene caracteres no validos");
    return 0;
    }
    }

    public static boolean esPalabraCaracteres(String palabra){
    for(int i = 0; i < palabra.length(); i++){
    if(!((palabra.charAt(i) > 64 && palabra.charAt(i) < 91) ||
    (palabra.charAt(i) > 96 && palabra.charAt(i) < 123)))
    return false;
    }
    return true;
    }
}
