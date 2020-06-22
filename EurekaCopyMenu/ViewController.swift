//
//  ViewController.swift
//  EurekaCopyMenu
//
//  Created by Mark Alldritt on 2020-06-21.
//  Copyright © 2020 Mark Alldritt. All rights reserved.
//

import UIKit
import Eureka


class ViewController: EurekaFormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        form +++ Section("Section")
            <<< ButtonRow() { (row) in
                row.title = "Button"
            }
            .onCellSelection { (cell, row) in
                guard !row.isDisabled else { return }
                
                let alertController = UIAlertController(title: "Pressed",
                                                        message: "The button was pressed",
                                                        preferredStyle: .alert)
                
                alertController.addAction(UIAlertAction(title: "Cancel",
                                                        style: .cancel))
                
                self.present(alertController, animated: true)
            }
            <<< LabelRow() { (row) in
                row.title = "Label With Value"
                row.value = "Value"
            }
            <<< LabelRow() { (row) in
                row.title = "Label Without Value"
            }
            <<< SwitchRow() { (row) in
                row.title = "Switch"
            }
    }


}

