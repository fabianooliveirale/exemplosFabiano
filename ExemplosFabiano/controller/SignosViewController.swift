//
//  SignosViewController.swift
//  ExemplosFabiano
//
//  Created by Anderson Soares on 28/11/18.
//  Copyright © 2018 exemplos. All rights reserved.
//

import UIKit

class SignosViewController: UITableViewController {

    var signos:[String] = []
    var descricao:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        
        descricao.append("01 - Aries:Descrição")
        descricao.append("02 - Touro:Descrição")
        descricao.append("03 - Gêmeos:Descrição")
        descricao.append("04 - Câncer:Descrição")
        descricao.append("05 - Leão:Descrição")

        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celSigno", for: indexPath) // indentificado de CEL na main story boad
        
        cell.textLabel?.text = signos[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alert = UIAlertController(title: signos[indexPath.row], message: descricao[indexPath.row], preferredStyle: .alert)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default) { (acao) in
            
        }
        
        alert.addAction(confirmar)
        
        present(alert, animated: true, completion: nil)
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
