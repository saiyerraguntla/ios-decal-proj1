//
//  ViewController.swift
//  ToDoList
//
//  Created by Sai on 3/2/16.
//  Copyright © 2016 Sai. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    var model:Model!
    var completedCount=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model=Model()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToDoListSegue(segue: UIStoryboardSegue) {
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ToDoCell", forIndexPath: indexPath) as! ToDoListTableViewCell        
        cell.toDoItemTextLabel.text = model.getModel()[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            model.deleteFromModel(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.getModel().count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToViewB" {
            let nav = segue.destinationViewController as! UINavigationController
            let targetVC=nav.viewControllers.first as! AddTaskViewController
            targetVC.model = self.model
        }
        
        if segue.identifier == "goToViewA" {
            //set completedCount
            completedCount=0
            let cells = self.tableView.visibleCells as! Array<ToDoListTableViewCell>
            for cell in cells {
                let elapsedTime = NSDate().timeIntervalSinceDate(cell.timeAdded)
                if elapsedTime>86400 {
                    completedCount++
                }
            }
            let targetVC = segue.destinationViewController as! CountTasksViewController
            targetVC.completedCount = self.completedCount
        }

    }
    
}

