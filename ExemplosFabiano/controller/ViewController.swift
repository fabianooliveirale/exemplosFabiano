//
//  ViewController.swift
//  ExemplosFabiano
//
//  Created by Anderson Soares on 27/11/18.
//  Copyright © 2018 exemplos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func alertButton(_ sender: Any) {
        let alert = UIAlertController(title: "Adicionar Contato", message: "Deseja add?", preferredStyle: .alert)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default) { (acao) in
            
            print("Confirmar")
            
        }
        
        let cancel = UIAlertAction(title: "Cancelar", style: .destructive) { (acao) in
            
            print("Cancelar")
            
        }
        
        alert.addAction(confirmar)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionSheetButton(_ sender: Any) {
        let alert = UIAlertController(title: "Adicionar Contato", message: "Deseja add?", preferredStyle: .actionSheet)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default) { (acao) in
            
            print("Confirmar")
            
        }
        
        let cancel = UIAlertAction(title: "Cancelar", style: .destructive) { (acao) in
            
            print("Cancelar")
            
        }
        
        alert.addAction(confirmar)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

