//
//  Model.swift
//  ToDoList
//
//  Created by Sai on 3/2/16.
//  Copyright © 2016 Sai. All rights reserved.
//

import UIKit

class Model {
    var model:[String]
    var numTasks=0
    
    init() {
        model=[];
    }
    
    func getModel() -> [String]{
        return model
    }
    
    func deleteFromModel(positionIndex:Int) {
        model.removeAtIndex(positionIndex)
    }
    
    func addToModel(task:String) {
        model.append(task)
    }
    
    func removeFromModel(position:Int) {
        model.removeAtIndex(position)
    }
    
}
