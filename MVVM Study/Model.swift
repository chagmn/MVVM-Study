//
//  Pet.swift
//  MVVM Study
//
//  Created by 창민 on 2020/12/01.
//

import Foundation

// MARK:- Model

class Person: NSObject{
    var name: String = ""
    var age: Int = 0
    var weight: Double = 0.0
    var height: Double = 0.0
    init(name: String, age: Int, weight: Double, height: Double){
        print("called Person(),\(name)")
        self.name = name
        self.age = age
        self.weight = weight
        self.height = height
    }
}

class Model: NSObject{
    func getPeopleData() -> NSDictionary{
        return [
            "People":[
                ["name":"AA", "age":20,"weight":60.5,"height":165.5,],
                ["name":"BB", "age":30,"weight":75.5,"height":170.5,],
                ["name":"CC", "age":40,"weight":80.5,"height":180.5,],
                ["name":"DD", "age":50,"weight":65.5,"height":185.5,],
            ],
        ]
    }
}
