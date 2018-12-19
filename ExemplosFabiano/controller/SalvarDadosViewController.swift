//
//  SalvarDadosViewController.swift
//  ExemplosFabiano
//
//  Created by Anderson Soares on 06/12/18.
//  Copyright © 2018 exemplos. All rights reserved.
//

import UIKit

class SalvarDadosViewController: UIViewController {
    @IBOutlet weak var textoCampo: UITextView!
    let chave = "anotacao"
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func buttonSalvar(_ sender: Any) {
        
        if let texto = textoCampo.text{
            UserDefaults.standard.set(texto, forKey:chave)
        }
    }
    
    func recuperar()->String {
        if let textRecuper = UserDefaults.standard.object(forKey: chave){
            return textRecuper as! String
        }
        return ""
    }
    
    //metodo precionar a tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textoCampo.text = recuperar()
        
        
        
        //EXEMPLOS DE SALVAR PEQUENOS DADOS
        
        //UserDefaults.standard.set("azul", forKey: "corFundo")
        //let texto = UserDefaults.standard.object(forKey: "corFundo")
        //var comidas: [String] = [ "lasanha", "pizza", "torta" ]
        //UserDefaults.standard.set(comidas, "comidas")
        //let comidas2 = UserDefaults.standard.object(forKey: "comidas")
        //print(comidas2)
        
        // removendo objetos salvor
        
        //UserDefaults.standard.removeObject(forKey: "corFundo")
        //UserDefaults.standard.removeObject(forKey: "comidas")
        
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
