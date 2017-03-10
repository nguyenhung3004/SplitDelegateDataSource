//
//  DataService.swift
//  SplitDelegateDataSource
//
//  Created by Trương Thắng on 3/9/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import Foundation

class DataService {
    static let shared : DataService = DataService()
    private var _students: [String] = []
    
    var students: [String] {
        set {
            _students = newValue
        }
        get {
            if _students.count == 0 {
                updateStudents()
            }
            return _students
        }
    }
    
    func updateStudents() {
        _students = [ "Thang", "Hien", "Hoang", "Duc"]
    }
    
    func reorderStudent(fromIndex: Int, toIndex: Int) {
        swap(&_students[fromIndex], &_students[toIndex])
    }
    
    private var _vehicles: [String] = []
    
    var vehicles: [String] {
        set {
            _vehicles = newValue
        }
        get {
            if _vehicles.count == 0 {
                updatevehicles()
            }
            return _vehicles
        }
    }
    
    func updatevehicles() {
        _vehicles = [ "Lexus", "Camry", "Mecxedec", "BMW", "Mitsubisi"]
    }
    
    func reordervehicles(fromIndex: Int, toIndex: Int) {
        swap(&_vehicles[fromIndex], &_vehicles[toIndex])
    }
    
    
    
}

func swap<T> (first: inout T, second: inout T) {
    let temp = first
    first = second
    second = temp
}
