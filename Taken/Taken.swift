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
    private var tablerosMeta = [[[String]]](); // Estados finales
    private var movimientos: Int = 0; //numero de movimientos del usuario
    private var nombreUsuario: String = "Me";
    //Constructor Inicializacion de los valores del tablero
    init(nombreUsuario:String ) {
        self.tablerosMeta = [[["1", "5" , "9" , "13"],  // vertical
                              ["2", "6" , "10" , "14"],
                              ["3", "7" , "11" , "15"],
                              ["4", "8" , "12" , ""]],
                             [["1", "2" , "3" , "4"],    // periferico
                              ["12", "13" , "14" , "5"],
                              ["11", "" , "15" , "6"],
                              ["10", "9" , "8" , "7"]],
                            [["7", "8" , "9" , "10"],    //espiral
                             ["6", "1" , "2" , "11"],
                             ["5", "4" , "3" , "12"],
                             ["", "15" , "14" , "13"]],
                            [["15", "14" , "13" , "12"],    //imposible
                             ["11", "10" , "9" , "8"],
                             ["7", "6" , "5" , "4"],
                             ["3", "2" , "1" , ""]]];
        self.nombreUsuario = nombreUsuario;
        
    }
    //Methods
    func verificarTablero()->(Bool, Int){ //Comparar estado actual con el estado final
        //get sizes of tablero inicial
        let rowLength = self.tablero.count;
        let columnLength = self.tablero[0].count;
        var countCoincidences: Int = 0; //count coincidences
        for var z in 0..<self.tablerosMeta.count{
            //print("indice = \(z)")
            for x in 0..<self.tablerosMeta[z].count{
                for y in 0..<self.tablerosMeta[z][x].count{
                    print(self.tablero[x][y])
                    if(self.tablerosMeta[z][x][y] == self.tablero[x][y]){ // compare element by element
                        countCoincidences+=1;
                    }
                }
            }
            //Si fila * columna = countCoincidences entonces los tableros son iguales
            if(countCoincidences == (rowLength * columnLength)-1){ //15 son suficientes
                print("Los tableros son iguales \(countCoincidences)");
                countCoincidences = 0;
                return (true, z); //retorna verdadero y el indice del tablero
            }else{
                print("Tablero no son iguales: -Coincidencias \(countCoincidences)");
                countCoincidences = 0;
                return (false, 0); //retorna falso ningun tablero del arreglo es igual al actual
            }
        }
        return (false, 0); // Por default retorna falso //retorna falso ningun tablero del arreglo es igual al actual
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
    //Getters
    func getMovimientos() -> Int{ // return numero total de movimientos
        return self.movimientos;
    }
    func getTableroActual() -> [[String]] { //retorna tablero actual
        return self.tablero;
    }
    func getTableroMeta() -> [[[String]]] { //retorna tablero final
        return self.tablerosMeta
    }
    //Setters
    func setMovimientos(movimientos: Int) {
        self.movimientos = movimientos;
    }
    func setTableroActual(tablero: [[String]]) {
        self.tablero = tablero;
    }
    func setTablerosMeta(tablerosMeta: [[[String]]]) {
        self.tablerosMeta = tablerosMeta;
    }
}
