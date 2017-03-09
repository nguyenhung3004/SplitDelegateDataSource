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
}
