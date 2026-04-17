//
//  AddViewController.swift
//  CharlesPedigoAssign5
//
//  Created by Pedigo, Charles L. on 4/17/26.
//

import UIKit

class AddViewController: UIViewController {
    var listVC: ListViewController?
    
    weak var delegate: ToDoDelegate? //Delegate avoids strong connections.
    
    @IBOutlet weak var propertyInputField: UITextField!
    
    @IBOutlet weak var delegateInputField: UITextField!
    
    
    
    @IBAction func cancel(_ sender: Any) {
        delegate?.addViewControllerDidCancel(self)
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        dismiss(animated: true)
        //Property
        guard let textA = propertyInputField.text else {
            return
        }
        listVC?.toDoList.append(textA) //optional chaining
        listVC?.toDoTableView.reloadData()
        //Delegate
        guard let textB = delegateInputField.text else{
            return
        }
        delegate?.addViewController(self, didInsert: textB)
        
        dismiss(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
