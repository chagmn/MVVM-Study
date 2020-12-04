//
//  ViewModel.swift
//  MVVM Study
//
//  Created by 창민 on 2020/12/01.
//

import Foundation

class ViewModel: NSObject{
    let model: Model = Model()
    var peopleData: NSArray!
    
    override init(){
        print("called ViewModel()")
        let data1 = model.getPeopleData()["People"] as! NSArray
        let data2 = NSMutableArray()
        for i in 0..<data1.count {
            let tmpData = data1[i] as! NSDictionary
            let name = tmpData["name"] as! String
            let age = tmpData["age"] as! Int
            let weight = tmpData["weight"] as! Double
            let height = tmpData["height"] as! Double
            //print("\(name),\(age),\(weight),\(height)")
            data2.add(Person(name: name, age: age, weight: weight, height: height))
        }
        peopleData = NSArray(array: data2)
        
    }
    
}
