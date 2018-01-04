//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Openroad 03 on 12/28/17.
//  Copyright © 2017 Openroad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var paises = ColeccionDePaises()
    var hamburguesas = ColeccionDeHamburguesa()
    
    @IBOutlet weak var labelPais: UILabel!
    @IBOutlet weak var labelHamburguesa: UILabel!
    
    @IBAction func cambiaLabels(_ sender: Any) {
        labelPais.text = paises.obtenPais()
        labelHamburguesa.text = hamburguesas.obtenHamburguesa()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

