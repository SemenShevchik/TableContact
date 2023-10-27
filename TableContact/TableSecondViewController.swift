//
//  TableSecondViewController.swift
//  TableContact
//
//  Created by Семен Шевчик on 26.10.2023.
//

import UIKit

class TableSecondViewController: UITableViewController {

    private var dataStore: [Person] = DataStore.getRandomPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - Table view data source
extension TableSecondViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return dataStore.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // В каждой секции будет две строки: одна для номера и одна для почты
        return 2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 25))
        let label = UILabel(frame: headerView.bounds)
        label.text = dataStore[section].name
        label.backgroundColor = .gray.withAlphaComponent(0.5)
        headerView.addSubview(label)
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = dataStore[indexPath.section]
        
        if indexPath.row == 0 {
            // Если это первая строка, отображаем номер
            cell.textLabel?.text = "Номер: \(person.phone)"
        } else {
            // Если это вторая строка, отображаем почту
            cell.textLabel?.text = "Почта: \(person.email)"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }
}
