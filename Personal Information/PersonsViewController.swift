//
//  PersonsViewController.swift
//  Personal Information
//
//  Created by Olegio on 20.08.2022.
//

import UIKit

class PersonsViewController: UITableViewController {

    private let persons = Person.getPersons()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)

        cell.textLabel?.text = persons[indexPath.row].name! + " " + persons[indexPath.row].surname!
        
        cell.imageView?.image = persons[indexPath.row].image
        cell.imageView?.clipsToBounds = true

        return cell
    }

    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailedViewController else { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            detailVC.person = persons[indexPath.row]
        }
    }
}
