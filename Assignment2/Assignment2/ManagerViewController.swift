//
//  ManagerViewController.swift
//  Assignment2
//
//  Created by user221341 on 6/18/23.
//

import UIKit

class ManagerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backButtonTapped))
                navigationItem.leftBarButtonItem = backButton
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func backButtonTapped() {
            dismiss(animated: true, completion: nil)
        }
    
    @IBAction func historyButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        
    }
    
}
