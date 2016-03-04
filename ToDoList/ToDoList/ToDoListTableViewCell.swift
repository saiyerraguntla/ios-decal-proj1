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
    
    @IBOutlet weak var deleteButton: UIButton!
    
    var completedButtonPressed=false
    var deleteButtonPressed=false
    
    var startTime:NSDate!
    
    @IBAction func completedTask(sender: AnyObject) {
        completedButtonPressed=true
        completedButton.hidden=true
        startTime=NSDate()
    }
    
    
    @IBAction func deleteTask(sender: AnyObject) {
        toDoItemTextLabel.text=""
        completedButton.hidden=true
        deleteButton.hidden=true
        deleteButtonPressed=true
    }
    
}
