//
//  CountTasksViewController.swift
//  ToDoList
//
//  Created by Sai on 3/8/16.
//  Copyright © 2016 Sai. All rights reserved.
//

import UIKit

class CountTasksViewController:UIViewController {
    
    @IBOutlet weak var TasksCountLabel: UILabel!
    
    var completedCount:Int = 0
    
    override func viewDidLoad() {
        TasksCountLabel.text = String(completedCount) + " Tasks Completed"
    }
    
    
}
