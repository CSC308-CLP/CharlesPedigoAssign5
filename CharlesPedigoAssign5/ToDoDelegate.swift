//
//  ToDoDelegate.swift
//  CharlesPedigoAssign5
//
//  Created by Pedigo, Charles L. on 4/17/26.
//

import UIKit

protocol ToDoDelegate: AnyObject {
    //Insert
    func addViewController(_ vc: UIViewController, didInsert todo: String)
    //Cancel
    func addViewControllerDidCancel(_ vc: UIViewController)
}
