//
//  AddTaskViewController.swift
//  ToDoList
//
//  Created by Sai on 3/2/16.
//  Copyright © 2016 Sai. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var userTask: UITextField!
    
    @IBOutlet weak var doneAddingTask: UIButton!
    
    var model:Model!
    
    @IBAction func doneAddingTask(sender:AnyObject) {
        model.addToModel(userTask.text!)
    }
    
}
