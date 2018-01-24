//
//  EntryListTableViewController.swift
//  w1rd3 Journal Prax
//
//  Created by Michael Flowers on 1/24/18.
//  Copyright © 2018 Michael Flowers. All rights reserved.
//

import UIKit

class EntryListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return EntryController.shared.entries.count
    }

  //CHEATED **************************                   *************************                  *************************************             *************************************
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       //get cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath)
        //get data
        let entry = EntryController.shared.entries[indexPath.row]
        //what do you want the cell to look like?
        cell.textLabel?.text = entry.title
        return cell
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //CHEATED **************************                   *************************                  *************************************             *************************************
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //I.D.I.D.P
        if segue.identifier == "cellSelected" {
           guard let toDetailVC = segue.destination as? EntryDetailViewController else {return}
            if let index = tableView.indexPathForSelectedRow {
            //data
            let entry = EntryController.shared.entries[index.row]
            toDetailVC.entry = entry
        }
    }
 

    }
}
