//
//  ToDoListTableViewCell.swift
//  ToDoList
//
//  Created by Sai on 3/2/16.
//  Copyright © 2016 Sai. All rights reserved.
//

import UIKit

class ToDoListTableViewCell:UITableViewCell {
    
    @IBOutlet weak var toDoItemTextLabel: UILabel!
    
    @IBOutlet weak var completedButton: UIButton!
    
    var completedButtonPressed=false
    var timeAdded:NSDate = NSDate()
    
    
    @IBAction func completedTask(sender: AnyObject) {
        completedButtonPressed=true
        completedButton.hidden=true
        timeAdded=NSDate()
    }
    
}
