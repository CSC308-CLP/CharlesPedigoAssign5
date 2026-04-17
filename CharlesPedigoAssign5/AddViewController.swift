//
//  AddViewController.swift
//  CharlesPedigoAssign5
//
//  Created by Pedigo, Charles L. on 4/17/26.
//

import UIKit

class AddViewController: UIViewController {
    var listVC: ListViewController?
    
    @IBOutlet weak var propertyInputField: UITextField!
    
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        dismiss(animated: true)
        guard let text = propertyInputField.text else {
            return
        }
        listVC?.toDoList.append(text) //optional chainning
        listVC?.toDoTableView.reloadData()
        //print(listVC?.toDoList)
        dismiss(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
