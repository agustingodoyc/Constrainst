//
//  SentMessage.swift
//  Constraints
//
//  Created by Agustin Godoy Cosser on 17/08/2022.
//

import Foundation
import UIKit

class SentMessage: UITableViewCell {
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var timeMessage: UILabel!
    
    func createMessage(_ sentMessage: MessageData) {
        message.text = sentMessage.message
        timeMessage.text = sentMessage.timeMessage
    }
}
