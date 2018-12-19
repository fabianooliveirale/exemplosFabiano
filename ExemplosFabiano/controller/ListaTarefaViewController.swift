//
//  ListaTarefaViewController.swift
//  ExemplosFabiano
//
//  Created by Anderson Soares on 10/12/18.
//  Copyright © 2018 exemplos. All rights reserved.
//

import UIKit

class ListaTarefaViewController: UIViewController {
    
    @IBOutlet weak var editText: UITextField!
    
    @IBAction func buttonSalvar(_ sender: Any) {
        
        if let textDigitado = editText.text {
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textDigitado)
            editText.text = ""
            
            let dados = tarefa.listar()
            
            print ( dados )
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
