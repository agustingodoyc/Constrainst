//
//  RecivedMessage.swift
//  Constraints
//
//  Created by Agustin Godoy Cosser on 17/08/2022.
//

import Foundation
import UIKit

class RecivedMessage: UITableViewCell {
    
    
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var timeMessage: UILabel!
    
    func createMessage(_ recivedMessage: MessageData) {
        username.text = recivedMessage.username
        message.text = recivedMessage.message
        timeMessage.text = recivedMessage.timeMessage
    }
}
