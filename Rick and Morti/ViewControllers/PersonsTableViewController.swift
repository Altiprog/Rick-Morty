//
//  PersonsTableViewController.swift
//  Rick and Morti
//
//  Created by Александр Тиунович on 31.10.23.
//

import UIKit

class PersonsTableViewController: UITableViewController {


    var information: [Information]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 140
        
    }

    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        guard let persInfoVC = segue.destination as? PersonInfoViewController else {return}
        persInfoVC.about = information[indexPath.section].person[indexPath.row].about
        persInfoVC.name = information[indexPath.section].person[indexPath.row]
    }
    
    
    
    
    
    // MARK: - Table view data source

    
    
    
    
    
    
    // устанавливаем колличество секций
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        information.count
        
    }
// уквзываем имена секций
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        information[section].title
    }
    
    // указываем колличество рядов в секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        information[section].person.count
        
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
//        let person = information[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = information[indexPath.section].person[indexPath.row].name
        content.image = UIImage(named: information[indexPath.section].person[indexPath.row].about.picture)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
      
        
        
    }
    // в этом методе при нажатии на ячейку ячейка сразу меняет цвет
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
//        let info = information[indexPath.row]
//        performSegue(withIdentifier: "show", sender: info)
    }
        
    }




