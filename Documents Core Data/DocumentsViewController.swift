//
//  DocumentsViewController.swift
//  Documents Core Data
//
//  Created by Dale Musser on 7/9/18.
//  Copyright © 2018 Dale Musser. All rights reserved.
//

import UIKit

class DocumentsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "documentCell", for: indexPath)
        
        if let cell = cell as? DocumentTableViewCell {
            //let document = documents[indexPath.row]
            //cell.nameLabel.text = document.name
            //cell.sizeLabel.text = String(document.size))
            //cell.modifiedLabel.text = dateFormatter.string(from: document.modifiedDate)
        }
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
