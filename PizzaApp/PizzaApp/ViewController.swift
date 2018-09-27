//
//  ViewController.swift
//  PizzaApp
//
//  Created by MacBookTicsInplanet on 13/9/18.
//  Copyright © 2018 MacBookTicsInplanet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pedido: Pedido?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        pedido = Pedido()
        (segue.destination as! PizzaSizeViewController).pedido = pedido
    }


}

