//
//  PizzaQuesoViewController.swift
//  PizzaApp
//
//  Created by MacBookTicsInplanet on 13/9/18.
//  Copyright © 2018 MacBookTicsInplanet. All rights reserved.
//

import UIKit

class PizzaQuesoViewController: UIViewController {
    var pedido : Pedido?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        (segue.destination as! PizzaIngredientsViewController).pedido = pedido
        
    }

    @IBAction func quesoSinQueso() {
        pedido?.queso = .SinQueso
    }
    @IBAction func quesoCheddar() {
        pedido?.queso = .Cheddar
    }
    @IBAction func quesoParmesano() {
        pedido?.queso = .Parmesano
    }
    @IBAction func quesoMozarella() {
        pedido?.queso = .Mozarella
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
