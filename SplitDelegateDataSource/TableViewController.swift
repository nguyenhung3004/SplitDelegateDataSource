//
//  TableViewController.swift
//  SplitDelegateDataSource
//
//  Created by Trương Thắng on 3/9/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let dataSourceObject = DataSource()
    let delegateObject = Delegate()
    let vehicleDelegate = VehicleDelegate()
    let vehicleDataSource = VehicleDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = delegateObject
        tableView.dataSource = dataSourceObject
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    enum segmentType: Int {
        case student
        case vehicle
    }
    
    @IBAction func segmentDidChanged(_ sender: Any) {
        let segment = sender as! UISegmentedControl
        switch segment.selectedSegmentIndex {
        case segmentType.student.rawValue:
            tableView.delegate = delegateObject
            tableView.dataSource = dataSourceObject
        case segmentType.vehicle.rawValue:
            tableView.delegate = vehicleDelegate
            tableView.dataSource = vehicleDataSource
        default:
            break
        }
        tableView.reloadData()
    }

   }
