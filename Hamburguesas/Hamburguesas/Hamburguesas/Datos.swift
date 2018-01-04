//
//  Datos.swift
//  Hamburguesas
//
//  Created by Openroad 03 on 12/28/17.
//  Copyright © 2017 Openroad. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    var paises : [String]
    func obtenPais( )->String {
        return paises[ Int(arc4random() % 20)]
    }
    init () {
        paises = ["Mexico","Guatemala","Estados Unidos","España","Italia","Francia","Alemania","Costa Rica","Brasil","Colombia","Uruguay","Argentina","Inglaterra","Suiza","Escocia","Portugal","Rusia","Noruega","Suecia","Australia"]
    }
}

class ColeccionDeHamburguesa{
    var hamburguesas: [String]
    func obtenHamburguesa( )->String {
        return hamburguesas[ Int(arc4random() % 20)]
    }
    init() {
       hamburguesas = ["Cuarto de libra","Big King","Fishy","Honga","Grill","Crispy","Choripan","Big Mac","Arrachera","Tocino","Texana","Rodeo","Chilly","Steak","Asada","Tipica","Quesoburguesa","BBQ","Pollo","Santa Fe"]
    }
}
