//
//  PizzaIngredientsViewController.swift
//  PizzaApp
//
//  Created by MacBookTicsInplanet on 13/9/18.
//  Copyright © 2018 MacBookTicsInplanet. All rights reserved.
//

import UIKit

class PizzaIngredientsViewController: UIViewController {
    var pedido : Pedido?
    
    @IBOutlet weak var textViewError: UILabel!
    
    @IBOutlet weak var btnJamon: UIButton!
    @IBOutlet weak var btnPepperoni: UIButton!
    @IBOutlet weak var btnPavo: UIButton!
    @IBOutlet weak var btnSalchicha: UIButton!
    @IBOutlet weak var btnAceituna: UIButton!
    @IBOutlet weak var btnCebolla: UIButton!
    @IBOutlet weak var btnPimiento: UIButton!
    @IBOutlet weak var btnPinia: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectJamon(_ sender: UIButton) {
        pedido?.ingredientes.append("Jamón")
        sender.isEnabled = false
        numeroElementos()
    }
    @IBAction func selectPepperoni(_ sender: UIButton) {
        pedido?.ingredientes.append("Pepperoni")
        sender.isEnabled = false
        numeroElementos()
    }
    @IBAction func selectPavo(_ sender: UIButton) {
        pedido?.ingredientes.append("Pavo")
        sender.isEnabled = false
        numeroElementos()
    }
    @IBAction func selectSalchicha(_ sender: UIButton) {
        pedido?.ingredientes.append("Salchicha")
        sender.isEnabled = false
        numeroElementos()
    }
    @IBAction func selectAceituna(_ sender: UIButton) {
        pedido?.ingredientes.append("Aceituna")
        sender.isEnabled = false
        numeroElementos()
    }
    @IBAction func selectCebolla(_ sender: UIButton) {
        pedido?.ingredientes.append("Cebolla")
        sender.isEnabled = false
        numeroElementos()
    }
    @IBAction func selectPimiento(_ sender: UIButton) {
        pedido?.ingredientes.append("Pimiento")
        sender.isEnabled = false
        numeroElementos()
    }
    @IBAction func selectPinia(_ sender: UIButton) {
        pedido?.ingredientes.append("Piña")
        sender.isEnabled = false
        numeroElementos()
    }
    func numeroElementos() {
        if ((pedido?.ingredientes.count)! == 5){
            btnJamon.isEnabled = false
            btnPepperoni.isEnabled = false
            btnPavo.isEnabled = false
            btnSalchicha.isEnabled = false
            btnAceituna.isEnabled = false
            btnCebolla.isEnabled = false
            btnPimiento.isEnabled = false
            btnPinia.isEnabled = false
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if ((pedido?.ingredientes.count)! < 5){
            textViewError.text = "Debes seleccionar mínimo 5 ingredientes"
        }else{
            print(pedido!.toString())
            (segue.destination as! ResultadoViewController).pedido = pedido
        }
        
    }
}
