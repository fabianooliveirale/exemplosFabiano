//
//  CustomTableViewController.swift
//  ExemplosFabiano
//
//  Created by Anderson Soares on 29/11/18.
//  Copyright © 2018 exemplos. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {

    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        let harryImg: UIImage = UIImage(named: "moeda_cara")!
        let aneisImg: UIImage = UIImage(named: "moeda_coroa")!
        
        
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
        
        let filme: Filme = filmes [indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCel", for: indexPath) as! CelulaTable// indentificado de CEL na main story boad
        cell.descricao.text = filme.descricao
        cell.img.image = filme.imagem
        cell.titulo.text = filme.titulo
        
        //cell.img.layer.cornerRadius = 42
        //cell.img.clipsToBounds = true
        //cell.imageView?.image = filmes[indexPath.row].imagem
        //cell.textLabel?.text = filmes[indexPath.row].titulo
        
        return cell
    }
    
    
    //prepareforsegue Metodo para passar um objeto
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "filmeDadosT"{
            if let indexPath = tableView.indexPathForSelectedRow {
                let filme = self.filmes [indexPath.row]
                let vcDestino = segue.destination as! DetalhesFilmeViewController
                    vcDestino.filme = filme
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        /*tableView.deselectRow(at: indexPath, animated: true)
        
        let alert = UIAlertController(title: filmes[indexPath.row].titulo, message: filmes[indexPath.row].descricao, preferredStyle: .alert)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default) { (acao) in
            
        }
        
        alert.addAction(confirmar)
        
        present(alert, animated: true, completion: nil)*/
        
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
