//
//  ViewController.swift
//  Taken
//
//  Created by Moviles on 21/01/20.
//  Copyright © 2020 Eduardo. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var taken:Taken = Taken(nombreUsuario:"pepe");
        //--Initialize principal Object
        self.setTakenObject(taken: taken);
    }
    //Variables Buttons
    
    @IBOutlet weak var reiniciarButton: UIButton!
    @IBOutlet weak var unoButton: UIButton!
    @IBOutlet weak var dosButton: UIButton!
    @IBOutlet weak var tresButton: UIButton!
    @IBOutlet weak var cuatroButton: UIButton!
    @IBOutlet weak var cincoButton: UIButton!
    @IBOutlet weak var seisButton: UIButton!
    @IBOutlet weak var sieteButton: UIButton!
    @IBOutlet weak var ochoButton: UIButton!
    @IBOutlet weak var nueveButton: UIButton!
    @IBOutlet weak var diezButton: UIButton!
    @IBOutlet weak var onceButton: UIButton!
    @IBOutlet weak var doceButton: UIButton!
    @IBOutlet weak var treceButton: UIButton!
    @IBOutlet weak var catorceButton: UIButton!
    @IBOutlet weak var quinceButton: UIButton!
    @IBOutlet weak var diesciseisButton: UIButton!
    private var takenObject: Taken?; //Object Taken
    @IBOutlet weak var labelMovimientos: UILabel!; //label nro. movimientos
    
    /*array of buttons
    var arrayOfButtons: [[UIButton]] = [];*/
    
    //Inicializa casillas
    /*func inicializaTablero(tableroInicial: [[String]]){
        for var i in 0..<tableroInicial.count{
            for var j in 0..<tableroInicial[0].count{
                
                }
            }
    }*/
    
    /*Methods*/
    
    //Getters
    //Setters
    func setTakenObject(taken: Taken){
        self.takenObject = taken;
    }
    func setLabelMovimientos(movimientos: String){
        //show movimientos on labelUI
        self.labelMovimientos.text! = movimientos;
    }
    @IBAction func reiniciarTablero(_ sender: Any) {
        //1, 2, 3, 4
        self.unoButton.setTitle("1", for: .normal);
        self.unoButton.backgroundColor = UIColor.systemTeal;
        self.dosButton.setTitle("2", for: .normal);
        self.dosButton.backgroundColor =  UIColor(red: 81/255, green: 182/255, blue: 142/255, alpha: 1);
        self.tresButton.setTitle("3", for: .normal);
        self.tresButton.backgroundColor = UIColor(red: 255/255, green: 251/255, blue: 186/255, alpha: 1);
        self.cuatroButton.setTitle("4", for: .normal);
        self.cuatroButton.backgroundColor = UIColor.systemOrange;
        //5, 6, 7, 8
        self.cincoButton.setTitle("5", for: .normal);
        self.cincoButton.backgroundColor = UIColor.systemTeal;
        self.seisButton.setTitle("6", for: .normal);
        self.seisButton.backgroundColor =  UIColor(red: 81/255, green: 182/255, blue: 142/255, alpha: 1);
        self.sieteButton.setTitle("7", for: .normal);
        self.sieteButton.backgroundColor = UIColor(red: 255/255, green: 251/255, blue: 186/255, alpha: 1);
        self.ochoButton.setTitle("8", for: .normal);
        self.ochoButton.backgroundColor = UIColor.systemOrange;
        //9, 10, 11, 12
        self.nueveButton.setTitle("9", for: .normal);
        self.nueveButton.backgroundColor = UIColor.systemTeal;
        self.diezButton.setTitle("10", for: .normal);
        self.diezButton.backgroundColor =  UIColor(red: 81/255, green: 182/255, blue: 142/255, alpha: 1);
        self.onceButton.setTitle("11", for: .normal);
        self.onceButton.backgroundColor = UIColor(red: 255/255, green: 251/255, blue: 186/255, alpha: 1);
        self.doceButton.setTitle("12", for: .normal);
        self.doceButton.backgroundColor = UIColor.systemOrange;
        //13, 14, 15, 16
        self.treceButton.setTitle("13", for: .normal);
        self.treceButton.backgroundColor = UIColor.systemTeal;
        self.catorceButton.setTitle("14", for: .normal);
        self.catorceButton.backgroundColor =  UIColor(red: 81/255, green: 182/255, blue: 142/255, alpha: 1);
        self.quinceButton.setTitle("15", for: .normal);
        self.quinceButton.backgroundColor = UIColor(red: 255/255, green: 251/255, blue: 186/255, alpha: 1);
        self.diesciseisButton.setTitle(nil, for: .normal);
        self.diesciseisButton.backgroundColor = UIColor.white;
        self.setLabelMovimientos(movimientos: "0");
        //Activa tablero
        self.activaTablero();

    }
    func desactivaTablero() {
        self.unoButton.isEnabled = false;
        self.unoButton.setTitleColor(.lightGray, for: .normal);
        self.dosButton.isEnabled = false;
        self.dosButton.setTitleColor(.lightGray, for: .normal);
        self.tresButton.isEnabled = false;
        self.tresButton.setTitleColor(.lightGray, for: .normal);
        self.cuatroButton.isEnabled = false;
        self.cuatroButton.setTitleColor(.lightGray, for: .normal);
        self.cincoButton.isEnabled = false;
        self.cincoButton.setTitleColor(.lightGray, for: .normal);
        self.seisButton.isEnabled = false;
        self.seisButton.setTitleColor(.lightGray, for: .normal);
        self.sieteButton.isEnabled = false;
        self.sieteButton.setTitleColor(.lightGray, for: .normal);
        self.ochoButton.isEnabled = false;
        self.ochoButton.setTitleColor(.lightGray, for: .normal);
        self.nueveButton.isEnabled = false;
        self.nueveButton.setTitleColor(.lightGray, for: .normal);
        self.diezButton.isEnabled = false;
        self.diezButton.setTitleColor(.lightGray, for: .normal);
        self.onceButton.isEnabled = false;
        self.onceButton.setTitleColor(.lightGray, for: .normal);
        self.doceButton.isEnabled = false;
        self.doceButton.setTitleColor(.lightGray, for: .normal);
        self.treceButton.isEnabled = false;
        self.treceButton.setTitleColor(.lightGray, for: .normal);
        self.catorceButton.isEnabled = false;
        self.catorceButton.setTitleColor(.lightGray, for: .normal);
        self.quinceButton.isEnabled = false;
        self.quinceButton.setTitleColor(.lightGray, for: .normal);
        self.diesciseisButton.isEnabled = false;
        self.diesciseisButton.setTitleColor(.lightGray, for: .normal);

    }
    func activaTablero() {
        self.unoButton.isEnabled = true;
        self.unoButton.setTitleColor(.darkText, for: .normal);
        self.dosButton.isEnabled = true;
        self.dosButton.setTitleColor(.darkText, for: .normal);
        self.tresButton.isEnabled = true;
        self.tresButton.setTitleColor(.darkText, for: .normal);
        self.cuatroButton.isEnabled = true;
        self.cuatroButton.setTitleColor(.darkText, for: .normal);
        self.cincoButton.isEnabled = true;
        self.cincoButton.setTitleColor(.darkText, for: .normal);
        self.seisButton.isEnabled = true;
        self.seisButton.setTitleColor(.darkText, for: .normal);
        self.sieteButton.isEnabled = true;
        self.sieteButton.setTitleColor(.darkText, for: .normal);
        self.ochoButton.isEnabled = true;
        self.ochoButton.setTitleColor(.darkText, for: .normal);
        self.nueveButton.isEnabled = true;
        self.nueveButton.setTitleColor(.darkText, for: .normal);
        self.diezButton.isEnabled = true;
        self.diezButton.setTitleColor(.darkText, for: .normal);
        self.onceButton.isEnabled = true;
        self.onceButton.setTitleColor(.darkText, for: .normal);
        self.doceButton.isEnabled = true;
        self.doceButton.setTitleColor(.darkText, for: .normal);
        self.treceButton.isEnabled = true;
        self.treceButton.setTitleColor(.darkText, for: .normal);
        self.catorceButton.isEnabled = true;
        self.catorceButton.setTitleColor(.darkText, for: .normal);
        self.quinceButton.isEnabled = true;
        self.quinceButton.setTitleColor(.darkText, for: .normal);
        self.diesciseisButton.isEnabled = true;
        self.diesciseisButton.setTitleColor(.darkText, for: .normal);
    }
    func alerta(resultado: String){
        let alert = UIAlertController(title: "Haz ganado!!", message: "\nModo: \(resultado)\nNro. Movimientos: \(takenObject!.getMovimientos())\nQuieres continuar?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Si", style: .default, handler: { action in self.reiniciarButton.sendActions(for: .touchUpInside);
        }))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }
    @IBAction func moverCasilla(_ sender: UIButton) {
        //variable temp
        var tempButton: UIButton;
        var color = sender.backgroundColor; // temp variable color
        switch sender{
            // 1, 2, 3, 4
        case self.unoButton:
            if(unoButton.titleLabel?.text != nil && dosButton.currentTitle == nil){
                //set values
            tempButton = unoButton;
                unoButton.setTitle(nil,for: .normal);
                dosButton.setTitle(tempButton.titleLabel!.text!,for: .normal);
                //set colors
                unoButton.backgroundColor = dosButton.backgroundColor;
                dosButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(unoButton.titleLabel?.text != nil && cincoButton.currentTitle == nil){
                tempButton = unoButton;
                unoButton.setTitle(nil,for: .normal);
                cincoButton.setTitle(tempButton.titleLabel!.text!,for: .normal);
                unoButton.backgroundColor = cincoButton.backgroundColor;
                cincoButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
                
            }
        case self.dosButton:
            if(dosButton.titleLabel?.text != nil && unoButton.currentTitle == nil){
                tempButton = dosButton;
                dosButton.setTitle(nil, for: .normal);
                unoButton.setTitle(tempButton.titleLabel!.text!,for: .normal);
                dosButton.backgroundColor = unoButton.backgroundColor;
                unoButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(dosButton.titleLabel?.text != nil && seisButton.currentTitle == nil){
                tempButton = dosButton;
                dosButton.setTitle(nil, for: .normal);
                seisButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                dosButton.backgroundColor = seisButton.backgroundColor;
                seisButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(dosButton.titleLabel?.text != nil && tresButton.currentTitle == nil){
                tempButton = dosButton;
                dosButton.setTitle(nil, for: .normal);
                tresButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                dosButton.backgroundColor = tresButton.backgroundColor;
                tresButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
        case self.tresButton:
            if(tresButton.titleLabel?.text != nil && dosButton.currentTitle == nil){
                tempButton = tresButton;
                tresButton.setTitle(nil, for: .normal);
                dosButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                tresButton.backgroundColor = dosButton.backgroundColor;
                dosButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(tresButton.titleLabel?.text != nil && cuatroButton.currentTitle == nil){
                tempButton = tresButton;
                tresButton.setTitle(nil, for: .normal);
                cuatroButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                tresButton.backgroundColor = cuatroButton.backgroundColor;
                cuatroButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(tresButton.titleLabel?.text != nil && sieteButton.currentTitle == nil){
                tempButton = tresButton;
                tresButton.setTitle(nil, for: .normal);
                sieteButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                tresButton.backgroundColor = sieteButton.backgroundColor;
                sieteButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
                
            }
        case self.cuatroButton:
            if(cuatroButton.titleLabel?.text != nil && tresButton.currentTitle == nil){
                tempButton = cuatroButton;
                cuatroButton.setTitle(nil, for: .normal);
                tresButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                cuatroButton.backgroundColor = tresButton.backgroundColor;
                tresButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(cuatroButton.titleLabel?.text != nil && ochoButton.currentTitle == nil){
                tempButton = cuatroButton;
                cuatroButton.setTitle(nil, for: .normal);
                ochoButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                cuatroButton.backgroundColor = ochoButton.backgroundColor;
                ochoButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            //5, 6, 7, 8
        case self.cincoButton:
            if(cincoButton.titleLabel?.text != nil && unoButton.currentTitle == nil){
                tempButton = cincoButton;
                cincoButton.setTitle(nil, for: .normal);
                unoButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                cincoButton.backgroundColor = unoButton.backgroundColor;
                unoButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(cincoButton.titleLabel?.text != nil && seisButton.currentTitle == nil){
                tempButton = cincoButton;
                cincoButton.setTitle(nil, for: .normal);
                seisButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                cincoButton.backgroundColor = seisButton.backgroundColor;
                seisButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(cincoButton.titleLabel?.text != nil && nueveButton.currentTitle == nil){
                tempButton = cincoButton;
                cincoButton.setTitle(nil, for: .normal);
                nueveButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                cincoButton.backgroundColor = nueveButton.backgroundColor;
                nueveButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            
        case self.seisButton:
            if(seisButton.titleLabel?.text != nil && cincoButton.currentTitle == nil){
                tempButton = seisButton;
                seisButton.setTitle(nil, for: .normal);
                cincoButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                seisButton.backgroundColor = cincoButton.backgroundColor;
                cincoButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(seisButton.titleLabel?.text != nil && dosButton.currentTitle == nil){
                tempButton = seisButton;
                seisButton.setTitle(nil, for: .normal);
                dosButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                seisButton.backgroundColor = dosButton.backgroundColor;
                dosButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(seisButton.titleLabel?.text != nil && sieteButton.currentTitle == nil){
                tempButton = seisButton;
                seisButton.setTitle(nil, for: .normal);
                sieteButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                seisButton.backgroundColor = sieteButton.backgroundColor;
                sieteButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(seisButton.titleLabel?.text != nil && diezButton.currentTitle == nil){
                tempButton = seisButton;
                seisButton.setTitle(nil, for: .normal);
                diezButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                seisButton.backgroundColor = diezButton.backgroundColor;
                diezButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
        case self.sieteButton:
            if(sieteButton.titleLabel?.text != nil && seisButton.currentTitle == nil){
                tempButton = sieteButton;
                sieteButton.setTitle(nil, for: .normal);
                seisButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                sieteButton.backgroundColor = seisButton.backgroundColor;
                seisButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(sieteButton.titleLabel?.text != nil && tresButton.currentTitle == nil){
                tempButton = sieteButton;
                sieteButton.setTitle(nil, for: .normal);
                tresButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                sieteButton.backgroundColor = tresButton.backgroundColor;
                tresButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(sieteButton.titleLabel?.text != nil && ochoButton.currentTitle == nil){
                tempButton = sieteButton;
                sieteButton.setTitle(nil, for: .normal);
                ochoButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                sieteButton.backgroundColor = ochoButton.backgroundColor;
                ochoButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(sieteButton.titleLabel?.text != nil && onceButton.currentTitle == nil){
                tempButton = sieteButton;
                sieteButton.setTitle(nil, for: .normal);
                onceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                sieteButton.backgroundColor = onceButton.backgroundColor;
                onceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            case self.ochoButton:
            if(ochoButton.titleLabel?.text != nil && sieteButton.currentTitle == nil){
                tempButton = ochoButton;
                ochoButton.setTitle(nil, for: .normal);
                sieteButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                ochoButton.backgroundColor = sieteButton.backgroundColor;
                sieteButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            if(ochoButton.titleLabel?.text != nil && cuatroButton.currentTitle == nil){
                tempButton = ochoButton;
                ochoButton.setTitle(nil, for: .normal);
                cuatroButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                ochoButton.backgroundColor = cuatroButton.backgroundColor;
                cuatroButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            if(ochoButton.titleLabel?.text != nil && doceButton.currentTitle == nil){
                tempButton = ochoButton;
                ochoButton.setTitle(nil, for: .normal);
                doceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                ochoButton.backgroundColor = doceButton.backgroundColor;
                doceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            //9, 10, 11, 12
        case self.nueveButton:
            if(nueveButton.titleLabel?.text != nil && cincoButton.currentTitle == nil){
                tempButton = nueveButton;
                nueveButton.setTitle(nil, for: .normal);
                cincoButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                nueveButton.backgroundColor = cincoButton.backgroundColor;
                cincoButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            if(nueveButton.titleLabel?.text != nil && diezButton.currentTitle == nil){
                tempButton = nueveButton;
                nueveButton.setTitle(nil, for: .normal);
                diezButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                nueveButton.backgroundColor = diezButton.backgroundColor;
                diezButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            if(nueveButton.titleLabel?.text != nil && treceButton.currentTitle == nil){
                tempButton = nueveButton;
                nueveButton.setTitle(nil, for: .normal);
                treceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                nueveButton.backgroundColor = treceButton.backgroundColor;
                treceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
        case self.diezButton:
            if(diezButton.titleLabel?.text != nil && nueveButton.currentTitle == nil){
                tempButton = diezButton;
                diezButton.setTitle(nil, for: .normal);
                nueveButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                diezButton.backgroundColor = nueveButton.backgroundColor;
                nueveButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            if(diezButton.titleLabel?.text != nil && seisButton.currentTitle == nil){
                tempButton = diezButton;
                diezButton.setTitle(nil, for: .normal);
                seisButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                diezButton.backgroundColor = seisButton.backgroundColor;
                seisButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            if(diezButton.titleLabel?.text != nil && onceButton.currentTitle == nil){
                tempButton = diezButton;
                diezButton.setTitle(nil, for: .normal);
                onceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                diezButton.backgroundColor = onceButton.backgroundColor;
                onceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            if(diezButton.titleLabel?.text != nil && catorceButton.currentTitle == nil){
                tempButton = diezButton;
                diezButton.setTitle(nil, for: .normal);
                catorceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                diezButton.backgroundColor = catorceButton.backgroundColor;
                catorceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            case self.onceButton:
            if(onceButton.titleLabel?.text != nil && diezButton.currentTitle == nil){
                tempButton = onceButton;
                onceButton.setTitle(nil, for: .normal);
                diezButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                onceButton.backgroundColor = diezButton.backgroundColor;
                diezButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(onceButton.titleLabel?.text != nil && sieteButton.currentTitle == nil){
                tempButton = onceButton;
                onceButton.setTitle(nil, for: .normal);
                sieteButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                onceButton.backgroundColor = sieteButton.backgroundColor;
                sieteButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(onceButton.titleLabel?.text != nil && doceButton.currentTitle == nil){
                tempButton = onceButton;
                onceButton.setTitle(nil, for: .normal);
                doceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                onceButton.backgroundColor = doceButton.backgroundColor;
                doceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(onceButton.titleLabel?.text != nil && doceButton.currentTitle == nil){
                tempButton = onceButton;
                onceButton.setTitle(nil, for: .normal);
                doceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                onceButton.backgroundColor = doceButton.backgroundColor;
                doceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(onceButton.titleLabel?.text != nil && quinceButton.currentTitle == nil){
                tempButton = onceButton;
                onceButton.setTitle(nil, for: .normal);
                quinceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                onceButton.backgroundColor = quinceButton.backgroundColor;
                quinceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
        case self.doceButton:
            if(doceButton.titleLabel?.text != nil && onceButton.currentTitle == nil){
                 tempButton = doceButton;
                 doceButton.setTitle(nil, for: .normal);
                 onceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                 doceButton.backgroundColor = onceButton.backgroundColor;
                 onceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
             }
            else if(doceButton.titleLabel?.text != nil && ochoButton.currentTitle == nil){
                tempButton = doceButton;
                doceButton.setTitle(nil, for: .normal);
                ochoButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                doceButton.backgroundColor = ochoButton.backgroundColor;
                ochoButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(doceButton.titleLabel?.text != nil && diesciseisButton.currentTitle == nil){
                tempButton = doceButton;
                doceButton.setTitle(nil, for: .normal);
                diesciseisButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                doceButton.backgroundColor = diesciseisButton.backgroundColor;
                diesciseisButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            //13, 14, 15, 16
        case self.treceButton:
            if(treceButton.titleLabel?.text != nil && nueveButton.currentTitle == nil){
                tempButton = treceButton;
                treceButton.setTitle(nil, for: .normal);
                nueveButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                treceButton.backgroundColor = nueveButton.backgroundColor;
                nueveButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
                
            }
            else if(treceButton.titleLabel?.text != nil && catorceButton.currentTitle == nil){
                tempButton = treceButton;
                treceButton.setTitle(nil, for: .normal);
                catorceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                treceButton.backgroundColor = catorceButton.backgroundColor;
                catorceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
        case self.catorceButton:
            if(catorceButton.titleLabel?.text != nil && treceButton.currentTitle == nil){
                tempButton = catorceButton;
                catorceButton.setTitle(nil, for: .normal);
                treceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                catorceButton.backgroundColor = treceButton.backgroundColor;
                treceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(catorceButton.titleLabel?.text != nil && diezButton.currentTitle == nil){
                tempButton = catorceButton;
                catorceButton.setTitle(nil, for: .normal);
                diezButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                catorceButton.backgroundColor = diezButton.backgroundColor;
                diezButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(catorceButton.titleLabel?.text != nil && quinceButton.currentTitle == nil){
                tempButton = catorceButton;
                catorceButton.setTitle(nil, for: .normal);
                quinceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                catorceButton.backgroundColor = quinceButton.backgroundColor;
                quinceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
        case self.quinceButton:
            if(quinceButton.titleLabel?.text != nil && catorceButton.currentTitle == nil){
                tempButton = quinceButton;
                quinceButton.setTitle(nil, for: .normal);
                catorceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                quinceButton.backgroundColor = catorceButton.backgroundColor;
                catorceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(quinceButton.titleLabel?.text != nil && onceButton.currentTitle == nil){
                tempButton = quinceButton;
                quinceButton.setTitle(nil, for: .normal);
                onceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                quinceButton.backgroundColor = onceButton.backgroundColor;
                onceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(quinceButton.titleLabel?.text != nil && diesciseisButton.currentTitle == nil){
                tempButton = quinceButton;
                quinceButton.setTitle(nil, for: .normal);
                diesciseisButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                quinceButton.backgroundColor = diesciseisButton.backgroundColor;
                diesciseisButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
        case self.diesciseisButton:
            if(diesciseisButton.titleLabel?.text != nil && quinceButton.currentTitle == nil){
                tempButton = diesciseisButton;
                diesciseisButton.setTitle(nil, for: .normal);
                quinceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                diesciseisButton.backgroundColor = quinceButton.backgroundColor;
                quinceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
            else if(diesciseisButton.titleLabel?.text != nil && doceButton.currentTitle == nil){
                tempButton = diesciseisButton;
                diesciseisButton.setTitle(nil, for: .normal);
                doceButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                diesciseisButton.backgroundColor = doceButton.backgroundColor;
                doceButton.backgroundColor = color;
                //set number of movimientos
                var movimientos: Int = self.takenObject!.getMovimientos();
                movimientos+=1;
                //show movimientos on labelUI
                self.setLabelMovimientos(movimientos: "\(movimientos)");
                self.takenObject?.setMovimientos(movimientos: movimientos); //set values propities on object
                //compare final states
                var tableroActual = [
                                [unoButton.titleLabel!.text!, dosButton.titleLabel!.text!, tresButton.titleLabel!.text!, cuatroButton.titleLabel!.text!],
                                   [cincoButton.titleLabel!.text!, seisButton.titleLabel!.text!, sieteButton.titleLabel!.text!, ochoButton.titleLabel!.text!],
                                    [nueveButton.titleLabel!.text!, diezButton.titleLabel!.text!, onceButton.titleLabel!.text!, doceButton.titleLabel!.text!],
                                    [treceButton.titleLabel!.text!, catorceButton.titleLabel!.text!, quinceButton.titleLabel!.text!,
                                     diesciseisButton.titleLabel!.text!]];
                self.takenObject?.setTableroActual(tablero: tableroActual);
                var resultsComparation = self.takenObject?.verificarTablero();
                if(resultsComparation?.0 == true && resultsComparation?.1 == 0){
                    print("result 1");
                    self.desactivaTablero();
                    self.alerta(resultado: "Vertical");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 1){
                    print("result 2");
                    self.desactivaTablero();
                    self.alerta(resultado: "Periferico");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 2){
                    print("result 3");
                    self.desactivaTablero();
                    self.alerta(resultado: "Espiral");
                }
                else if(resultsComparation?.0 == true && resultsComparation?.1 == 3){
                    print("result 4");
                    self.desactivaTablero();
                    self.alerta(resultado: "Imposible");
                }
            }
        default:
            break;
        }
    }
}

