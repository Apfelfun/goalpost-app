//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Yousef Ouarghi on 05.08.17.
//  Copyright © 2017 Yousef Ouarghi. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let goal = Goal()
        goal.goalProgress = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
    }
    
}

