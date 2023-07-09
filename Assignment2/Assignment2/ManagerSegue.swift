//
//  ManagerSegue.swift
//  Assignment2
//
//  Created by user221341 on 6/18/23.
//

import UIKit

class ManagerSegue: UIStoryboardSegue {
    override func perform() {
            
            source.present(destination, animated: true, completion: nil)
        }
}

