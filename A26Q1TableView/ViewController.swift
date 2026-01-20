//
//  ViewController.swift
//  A26Q1TableView
//
//  Created by Danny Shen on 2026/1/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theTableView.dataSource = self
        theTableView.delegate = self
        
        // 註冊 XIB Cell
        let nib = UINib(nibName: "My2TableViewCell", bundle: nil)
        theTableView.register(nib, forCellReuseIdentifier: "my2TableViewCell")
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "my2TableViewCell", for: indexPath) as! My2TableViewCell
//        cell.cellLabel.text = "text for \(indexPath.row)"
        return cell
    }
    
    
}

