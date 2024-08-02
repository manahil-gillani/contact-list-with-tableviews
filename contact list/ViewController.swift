//
//  ViewController.swift
//  contact list
//
//  Created by syeda manahil fatima on 22/07/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let contacts = [
            Contact(name: "Mom <3"),
            Contact(name: "Dad ;)"),
            Contact(name: "Abdullah Fast"),
            Contact(name: "Ali Mamu"),
            Contact(name: "Ammar Fast"),
            Contact(name: "Areeba Fast"),
            Contact(name: "Maria LGS"),
            Contact(name: "Abdullah Fast"),
            Contact(name: "Syeda Mariha"),
            Contact(name: "Zafar Mamu"),
            Contact(name: "Phupo Amber"),
            Contact(name: "Alishba"),
            Contact(name: "Ghania"),
            Contact(name: "Rafay Softec"),
            Contact(name: "Chachu Jaffar")
    ]
    
    let tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(tableView)
        tableView.frame = CGRect(x: 0, y: 200, width: 500, height: 650)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(customcell.self, forCellReuseIdentifier: "cell")
        self.view.backgroundColor = UIColor.black
        tableView.rowHeight = 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customcell
        
        let contact = contacts[indexPath.row]
        cell.contactname.text = contact.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("cell of \(contacts[indexPath.row].name) is clicked.")
    }
}


