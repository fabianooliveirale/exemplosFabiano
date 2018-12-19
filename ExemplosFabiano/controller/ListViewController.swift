//
//  ListViewController.swift
//  ExemplosFabiano
//
//  Created by Anderson Soares on 27/11/18.
//  Copyright © 2018 exemplos. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    var dados: [String] = ["Aiasasasas","Pasasasai","asasasasOh!"]

    @IBOutlet weak var labelCel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        cell.textLabel?.text = dados[indexPath.row]
        
        return cell
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
