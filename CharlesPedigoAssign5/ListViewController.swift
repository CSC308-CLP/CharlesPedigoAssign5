//
//  ViewController.swift
//  CharlesPedigoAssign5
//
//  Created by Pedigo, Charles L. on 4/17/26.
//

import UIKit

//source, destination
class ListViewController: UIViewController {
    
    @IBOutlet weak var toDoTableView: UITableView!
    
    
    var toDoList = [String]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination.children.first as? AddViewController {
            vc.listVC = self
            vc.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ListViewController: ToDoDelegate {
    func addViewController(_ vc: UIViewController, didInsert todo: String) {
        toDoList.append(todo)
        toDoTableView.reloadData()
    }
    
    func addViewControllerDidCancel(_ vc: UIViewController) {
        
    }
    
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
    
    
}

