//
//  DetalhesFilmeViewController.swift
//  ExemplosFabiano
//
//  Created by Anderson Soares on 06/12/18.
//  Copyright © 2018 exemplos. All rights reserved.
//

import UIKit

class DetalhesFilmeViewController: UIViewController {
    
    var filme: Filme!
    
    @IBOutlet weak var imgFilme: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelDescricao: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgFilme.image = filme.imagem
        labelTitulo.text = filme.titulo
        labelDescricao.text = filme.descricao
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
