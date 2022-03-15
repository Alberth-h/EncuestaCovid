//
//  ViewController.swift
//  EncuestaCovid
//
//  Created by Alumno on 07/03/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwInfoGeneral: UIView!
    @IBOutlet weak var vwPreguntas: UIView!
    @IBOutlet weak var btnSiguiente: UIButton!
    @IBOutlet weak var btnVolver: UIButton!
    @IBOutlet weak var btnEnviar: UIButton!
    
    @IBOutlet weak var lblAdvertenciaMatricula: UILabel!
    @IBOutlet weak var lblAdvertenciaNombre: UILabel!
    @IBOutlet weak var lblAdvertenciaEmail: UILabel!
    
    @IBOutlet weak var txtMatricula: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vwPreguntas.isHidden = true
        btnVolver.isHidden = true
        btnEnviar.isHidden = true
        btnVolver.isEnabled = false
        btnEnviar.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doTapSiguiente(_ sender: Any) {
        vwInfoGeneral.isHidden = true
        btnSiguiente.isHidden = true
        btnSiguiente.isEnabled = false
        
        vwPreguntas.isHidden = false
        btnVolver.isHidden = false
        btnEnviar.isHidden = false
        btnVolver.isEnabled = true
        btnEnviar.isEnabled = true
        
        if txtMatricula.text == nil {
            lblAdvertenciaMatricula.isHidden = false
        }
        if txtNombre.text == nil {
            lblAdvertenciaNombre.isHidden = false
        }
        if txtEmail.text == nil {
            lblAdvertenciaEmail.isHidden = false
        }
        
        
    }
    
    @IBAction func doTapVolver(_ sender: Any) {
        vwInfoGeneral.isHidden = false
        btnSiguiente.isHidden = false
        btnSiguiente.isEnabled = true
        
        vwPreguntas.isHidden = true
        btnVolver.isHidden = true
        btnEnviar.isHidden = true
        btnVolver.isEnabled = false
        btnEnviar.isEnabled = false
    }
    
    @IBOutlet weak var doTapEnviar: UIButton!
    
}

