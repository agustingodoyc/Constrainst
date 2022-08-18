//
//  ViewController.swift
//  Constraints
//
//  Created by Agustin Godoy Cosser on 10/08/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITextViewDelegate {
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    var tableViewData: [MessageData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewData = DataLoader().loadMessages()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "TableViewCell")
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (tableViewData[indexPath.row].username != "Me") {
            guard let recivedCell = tableView.dequeueReusableCell(withIdentifier: "recivedMessage",
                                                           for: indexPath) as? RecivedMessage else {
                return UITableViewCell()
            }
            recivedCell.createMessage(tableViewData[indexPath.row])
            return recivedCell
        } else {
            guard let sentCell = tableView.dequeueReusableCell(withIdentifier: "sentMessage",
                                                           for: indexPath) as? SentMessage else {
                return UITableViewCell()
            }
            sentCell.createMessage(tableViewData[indexPath.row])
            return sentCell
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
}
