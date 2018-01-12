//
//  FruitsTableViewController.swift
//  TableExample
//
//  Created by Grace on 12/01/2018.
//  Copyright © 2018 Grace. All rights reserved.
//

import UIKit

class FruitsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
     return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //return a title according to the section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }

    //configured the cell text to show the section and row numbers
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"

        return cell
    }

}
