//
//  FilmeViewController.swift
//  ExemplosFabiano
//
//  Created by Anderson Soares on 28/11/18.
//  Copyright © 2018 exemplos. All rights reserved.
//

import UIKit

class FilmeViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        var filme: Filme
        
        let harryImg: UIImage = UIImage(named: "harry")!
        let aneisImg: UIImage = UIImage(named: "anel")!
        
        
        filme = Filme(titulo: "Harry Poter", descricao: "Descricao harry", imagem: harryImg)
        filmes.append(filme)
        
        filme = Filme(titulo: "Senhor dos Aneis", descricao: "Descricao SR. dos aneis",imagem: aneisImg)
        filmes.append(filme)
        // Do any additional setup after loading the view.
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celFilmes", for: indexPath) // indentificado de CEL na main story boad
        
        cell.imageView?.image = filmes[indexPath.row].imagem
        cell.textLabel?.text = filmes[indexPath.row].titulo
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alert = UIAlertController(title: filmes[indexPath.row].titulo, message: filmes[indexPath.row].descricao, preferredStyle: .alert)
        
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
