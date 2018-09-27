//
//  ResultadoViewController.swift
//  PizzaApp
//
//  Created by MacBookTicsInplanet on 27/9/18.
//  Copyright © 2018 MacBookTicsInplanet. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {
    var pedido : Pedido?
    
    @IBOutlet weak var textView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pedido!.toString())
        if(pedido != nil){
            textView.text = pedido!.toString()
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
