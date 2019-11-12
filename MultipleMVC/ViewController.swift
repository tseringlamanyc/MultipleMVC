//
//  ViewController.swift
//  MultipleMVC
//
//  Created by Tsering Lama on 11/12/19.
//  Copyright © 2019 Tsering Lama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }

    let swiftTopics = ["Basic Operators", "Strings and Characters", "Collection Types", "Control Flow", "Functions",
                       "Closures", "Enumerations", "Structures and Classes", "Properties", "Methods", "Subscripts",
                       "Inheritance", "Initialization", "Deinitialization", "Optional Chaining", "Error Handling",
                       "Type Casting", "Nested Types", "Extensions", "Protocols", "Generics", "Opaque Types",
                       "Automatic Reference Counting", "Memory Safety", "Access Control", "Advanced Operators"
    ]
    
    
    
    @IBOutlet weak var tableShow: UITableView!
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftTopics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicsCell", for: indexPath)
        let topic = swiftTopics[indexPath.row]
        cell.textLabel?.text = topic.description
        return cell
    }
}

