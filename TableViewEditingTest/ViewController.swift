//
//  ViewController.swift
//  TableViewEditingTest
//
//  Created by kiran on 1/22/19.
//  Copyright © 2019 kiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tb: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rightButton = UIBarButtonItem(title: "Edit", style: UIBarButtonItem.Style.plain, target: self, action: #selector(showEditing))
        
        self.navigationItem.rightBarButtonItem = rightButton
        tb.delegate = self
        tb.dataSource = self
        
        

    }
    
    @objc
    func showEditing(sender: UIBarButtonItem)
    {
        if(self.tb.isEditing == true)
        {
            self.tb.isEditing = false
            self.navigationItem.rightBarButtonItem?.title = "Edit"
        }
        else
        {
            self.tb.isEditing = true
            self.navigationItem.rightBarButtonItem?.title = "Done"
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = "ddddd"
        return cell!
    }
    
    
    
    
    
    
    
    
    
}

