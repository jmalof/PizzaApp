//
//  Datos.swift
//  PizzaApp
//
//  Created by MacBookTicsInplanet on 27/9/18.
//  Copyright © 2018 MacBookTicsInplanet. All rights reserved.
//

import Foundation

import UIKit

enum Tamanio:String {
    case Pequenia = "Pequeña"
    case Mediana = "Mediana"
    case Grande = "Grande"
}

enum Masa:String {
    case Delgada = "Delgada"
    case Gruesa = "Gruesa"
    case Crujiente = "Crujiente"
}

enum Queso:String {
    case SinQueso = "Sin queso"
    case Cheddar = "Cheddar"
    case Parmesano = "Parmesano"
    case Mozarella = "Mozarella"
}

class Pedido {
    var tamanio: Tamanio?
    var masa: Masa?
    var queso: Queso?
    var ingredientes :[String] = []
    
    func listIngredientes() -> String {
        var result : String = ""
        for ing in ingredientes{
            result+="\n \t\t\(ing)"
        }
        return result
    }
    
    init() {}
    
    func toString() -> String {
        return "Tamaño: \(self.tamanio?.rawValue ?? "") \nMasa: \(self.masa?.rawValue ?? "") \nQueso: \(self.queso?.rawValue ?? "") \n\n \tIngredientes: \(self.listIngredientes())"
    }
}
