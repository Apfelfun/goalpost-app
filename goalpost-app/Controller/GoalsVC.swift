//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Yousef Ouarghi on 05.08.17.
//  Copyright © 2017 Yousef Ouarghi. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
    }


    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
    }
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        cell.configureCell(description: "Eat salad twice a week", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
}

