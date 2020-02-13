//
//  Taken.swift
//  Taken
//
//  Created by Moviles on 06/02/20.
//  Copyright © 2020 Eduardo. All rights reserved.
//

import Foundation

class Taken{
    //atributtes
    private var tablero = [[String]](); // Estado actual
    private var tableroMeta = [[String]](); // Estados finales
    private var movimientos: Int = 0; //numero de movimientos del usuario
    private var nombreUsuario: String = "Me";
    //Constructor Inicializacion de los valores del tablero
    init(tableroInicial: [ [String] ], nombreUsuario:String ) {
        self.tablero = tableroInicial;
        self.nombreUsuario = nombreUsuario;
        
    }
    //Methods
    func verificarTablero(){ //Comparar estado actual con el estado final
    //get sizes
        let rowLength = self.tablero.count;
        let columnLength = self.tablero[0].count;
        var countCoincidences: Int = 0;
        for var i in 0..<rowLength{
            for var j in 0..<columnLength{
                if(self.tableroMeta[i][j] == self.tablero[i][j]){
                    countCoincidences+=1;
                }
            }
        }
        //Si fila * columna = countCoincidences entonces los tableros son iguales
        if(countCoincidences == (rowLength * columnLength)){
            print("Los tableros son iguales \(countCoincidences)");
            
        }else{
            print("Tablero no son iguales: -Coincidencias \(countCoincidences)")
        }
    }
    /*func moverCasilla(){ // Intercambio de valores entre las casillas
        /*Deteccion de los vecinos vacios*/
        for var i in 0..<self.tablero.count {
            //var line = ""
            for var j in 0..<self.tablero[i].count {
                //line += String(units[x][y])
                if(i == 0 && j == 0){ // sup-izq
                }
                else if( i == 0 && ( j > 0 && j < self.tablero[i].count - 1)){ // linea superior
                }
                else if(i == 0 && ){}
                
            }
            print(line)
        }
    }*/
    func reiniciar(){ //reinicia el tablero al estado inicial
    }
    //Getters
    func getMovimientos() -> Int{ // return numero total de movimientos
        return self.movimientos;
    }
    func getTableroActual() -> [[String]] { //retorna tablero actual
        return self.tablero;
    }
    func getTableroMeta() -> [[String]] { //retorna tablero final
        return self.tableroMeta
    }
    //Setters
    func setMeta(tableroMeta: [[String]]) {
        self.tableroMeta = tableroMeta;
    }
}
var tableroInic = [ ["1", "2" , "3" , "4"],
                ["5", "6" , "7" , "8"],
                ["9", "10" , "11" , "12"],
                ["13", "14" , "15" , ""] ];
                var tableroMet = [ ["1", "2" , "3" , "4"],
                ["5", "6" , "7" , "8"],
                ["9", "10" , "11" , "12"],
                ["13", "14" , "15" , ""] ];
var taken:Taken = Taken(tableroInicial: tableroInic, nombreUsuario:"pepe");
//taken.setMeta(tableroMeta: tableroMet);
//taken.verificarTablero();
