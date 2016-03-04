//
//  Model.swift
//  ToDoList
//
//  Created by Sai on 3/2/16.
//  Copyright © 2016 Sai. All rights reserved.
//

import UIKit

class Model {
    var model:[String];
    
    init() {
        model=[];
    }
    
    func getModel() -> [String]{
        return model
    }
    
    func addToModel(task:String) {
        model.append(task)
    }
    
    func removeFromModel(position:Int) {
        model.removeAtIndex(position)
    }
    
    func getNumTasks() -> Int {
        return 0
    }
}
