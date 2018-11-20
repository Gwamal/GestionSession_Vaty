/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author vanat
 */
public class NbAlea {
     
    private int essais;
    private int aleatoire;
    
    public NbAlea() {
        essais = 0;
        aleatoire = (int) (Math.random()*100-0);
    }
    public int getEssai() {
        return this.essais;
    }
    
    public int getAlea() {
        return this.aleatoire;
    }
    public void addEssai() {
        this.essais++;
    }
    public String proposition(int nb) {
        if(nb > this.aleatoire ) {
            return "Trop haut";
        } else if (nb < this.aleatoire) {
            return "Trop bas";
        } else {
            return "Trouvé";
        }
    }
}


