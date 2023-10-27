//
//  TableFirstTableViewController.swift
//  TableContact
//
//  Created by Семен Шевчик on 26.10.2023.
//

import UIKit

class TableFirstTableViewController: UITableViewController {

    private var dataStore: [Person] = DataStore.getRandomPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailsVC = segue.destination as? FirstDetailsViewController else { return }
        detailsVC.person = dataStore[indexPath.row]
    }
    

}

// MARK: - Table view data source

extension TableFirstTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataStore.count
    
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let datastore = dataStore[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = datastore.name
        cell.contentConfiguration = content
        
        return cell
    }
}
