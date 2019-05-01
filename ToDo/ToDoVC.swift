//
//  ViewController.swift
//  ToDo
//
//  Created by Lucie Baker on 5/1/19.
//  Copyright © 2019 Lucie Baker. All rights reserved.
//

import UIKit

class ToDoVC: UITableViewController {

    let itemArray = ["Find Patrick", "Buy wine", "Take over the world!"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

// MARK - Tableview datasource Method
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - TableView delegate Methods which detects which row was selected and if selected row had a checkmark already or not - also last line - more about UX - that animated the line highlight
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print(itemArray[indexPath.row])
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
}



