//
//  PizzaMasaViewController.swift
//  PizzaApp
//
//  Created by MacBookTicsInplanet on 13/9/18.
//  Copyright © 2018 MacBookTicsInplanet. All rights reserved.
//

import UIKit

class PizzaMasaViewController: UIViewController {
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
        
        (segue.destination as! PizzaQuesoViewController).pedido = pedido
        
    }

    @IBAction func masaDelgada() {
        pedido?.masa = .Delgada
    }
    @IBAction func masaGruesa() {
        pedido?.masa = .Gruesa
    }
    @IBAction func masaCrujiente() {
        pedido?.masa = .Crujiente
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
