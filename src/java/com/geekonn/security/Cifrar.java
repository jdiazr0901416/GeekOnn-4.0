/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geekonn.security;

import static com.geekonn.security.Cifrar.Prng;
import static com.geekonn.security.Cifrar.ToHex;
import static com.geekonn.security.Cifrar.a;
import static com.geekonn.security.Cifrar.b;
import static com.geekonn.security.Cifrar.charset;
import static com.geekonn.security.Cifrar.ksa;
import static com.geekonn.security.Cifrar.pseudoStream;
import static com.geekonn.security.Cifrar.swap;

/**
 *
 * @author Bouchan
 */
public class Cifrar {
    
        public static String charset = "0123456789ABCDEF";
    public static int pseudoStream[] = new int[256];
    public static int a =0,b=0;
    String resultado;
    
    public String encriptar(String password){
            
            a=b=0;
            String plain = password;
            String key = "evoteck";
            ksa(key);
            String epa = "";
            
            //Aqui se va a realizar todo el desmadre para ENCRIPTAR

            for(int n = 0;n<plain.length();n++)
            epa+=ToHex((plain.charAt(n))^Prng());
            
            System.out.println(epa);
            resultado = epa.toString();
            return resultado;
	
    }
		//Metodos creados por comodidad dentro del codigo del encriptado
		
		public static String ToHex(int a){

			String tmp="";

			do{

				tmp =charset.charAt(a%16)+tmp;

			}while((a>>=4)>0);
			return (tmp.length()>1)?tmp:"0"+tmp;
		}

		public static int Prng(){

			a=(++a)%256;
			b=(b+pseudoStream[a])%256;
			swap(pseudoStream,a,b);
			return pseudoStream[(pseudoStream[a]+pseudoStream[b])%256];

		}

		public static void ksa(String key){

			for(int n =0;n<pseudoStream.length;n++)
			pseudoStream[n]=n;
			int j = 0;

			for(int n = 0;n<pseudoStream.length;n++){

				j=(j+pseudoStream[n]+((int)key.charAt(n%key.length())))%256;
				swap(pseudoStream,n,j);

			}
		}

		public static void swap(int a[],int b,int c){

			int tmp = a[b];
			a[b]=a[c];
			a[c]=tmp;
			
		}

		//Como siempre mi codigo bien organizado y comentado BIEN VERGAS!
    
}
