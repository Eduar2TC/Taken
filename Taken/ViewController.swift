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
    }
    var takenObject: Taken?
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
    
    @IBAction func moverCasilla(_ sender: UIButton) {
        //variable temp
        var tempButton: UIButton;
        var color = sender.backgroundColor; // temp variable color
        
        switch sender{

        case self.unoButton:
            if(unoButton.titleLabel?.text != nil && dosButton.currentTitle == nil){
                //set values
                tempButton = unoButton;
                unoButton.setTitle(nil,for: .normal);
                dosButton.setTitle(tempButton.titleLabel!.text!,for: .normal);
                //set colors
                unoButton.backgroundColor = dosButton.backgroundColor;
                dosButton.backgroundColor = color;
            }
            else if(unoButton.titleLabel?.text != nil && cincoButton.currentTitle == nil){
                tempButton = unoButton;
                unoButton.setTitle(nil,for: .normal);
                cincoButton.setTitle(tempButton.titleLabel!.text!,for: .normal);
                unoButton.backgroundColor = cincoButton.backgroundColor;
                cincoButton.backgroundColor = color;
                
            }
        case self.dosButton:
            if(dosButton.titleLabel?.text != nil && unoButton.currentTitle == nil){
                tempButton = dosButton;
                dosButton.setTitle(nil, for: .normal);
                unoButton.setTitle(tempButton.titleLabel!.text!,for: .normal);
                dosButton.backgroundColor = unoButton.backgroundColor;
                unoButton.backgroundColor = color;
            }
            else if(dosButton.titleLabel?.text != nil && seisButton.currentTitle == nil){
                tempButton = dosButton;
                dosButton.setTitle(nil, for: .normal);
                seisButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                dosButton.backgroundColor = seisButton.backgroundColor;
                seisButton.backgroundColor = color;
            }
            else if(dosButton.titleLabel?.text != nil && tresButton.currentTitle == nil){
                tempButton = dosButton;
                dosButton.setTitle(nil, for: .normal);
                tresButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                dosButton.backgroundColor = tresButton.backgroundColor;
                tresButton.backgroundColor = color;
            }
        case self.tresButton:
            if(tresButton.titleLabel?.text != nil && dosButton.currentTitle == nil){
                tempButton = tresButton;
                tresButton.setTitle(nil, for: .normal);
                dosButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                tresButton.backgroundColor = dosButton.backgroundColor;
                dosButton.backgroundColor = color;
            }
            else if(tresButton.titleLabel?.text != nil && cuatroButton.currentTitle == nil){
                tempButton = tresButton;
                tresButton.setTitle(nil, for: .normal);
                cuatroButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                tresButton.backgroundColor = cuatroButton.backgroundColor;
                cuatroButton.backgroundColor = color;
            }
            else if(tresButton.titleLabel?.text != nil && sieteButton.currentTitle == nil){
                tresButton.setTitle(nil, for: .normal);
                tempButton = tresButton;
                sieteButton.setTitle(tempButton.titleLabel!.text!, for: .normal);
                sieteButton.backgroundColor = tempButton.backgroundColor;
            }
        default:
            break;
        }
    }
}

