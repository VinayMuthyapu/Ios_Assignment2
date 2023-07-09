//
//  ViewController.swift
//  Assignment2
//
//  Created by user221341 on 6/18/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource
{
    
    
    
    @IBOutlet var NumberButtons: [UIButton]!
    
    @IBOutlet weak var TotalPriceLabel: UILabel!
    
    @IBOutlet weak var Quantity_label: UILabel!
    
    @IBOutlet weak var TicketType_Label: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    //let ticketTypes = ["Balcony Level Ticket 12 price: 1,170$", "Lower Level Ticket 20 price: 10,434$", "Courtside 15 price: 27,777$"]
    let ticketTypes = [
            TicketType(name: "Balcony Level Ticket", price: 1170),
            TicketType(name: "Lower Level Ticket", price: 10434),
            TicketType(name: "Courtside", price: 27777)
        ]
    
    var selectedTicketType: TicketType?
    var currentQuantity: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for button in NumberButtons{
            button.layer.borderWidth = 1.0;
            button.layer.borderColor = UIColor.black.cgColor;
            button.layer.cornerRadius = 5.0;
            
        }
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ticketTypes.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ticketTypes[row].name
        }
        
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedTicketType = ticketTypes[row]
        TicketType_Label.text = selectedTicketType?.name
        calculateTotalCost()
        }
    
    @IBAction func NumbersButtonTapped(_ sender: UIButton) {
        if let digitText = sender.titleLabel?.text, let digit = Int(digitText) {
            currentQuantity = currentQuantity * 10 + digit
            Quantity_label.text = "\(currentQuantity)"
            //calculateTotalCost()
            print("Button digit: \(digitText)")
        }
        
    }
    
        
        @IBAction func buyButtonTapped(_ sender: UIButton) {
            // Handle buy button action
        }
    
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
            resetQuantity()
        }

        func resetQuantity() {
            currentQuantity = 0
            Quantity_label.text = "\(currentQuantity)"
            calculateTotalCost()
        }
    func calculateTotalCost() {
            guard let selectedTicketType = selectedTicketType else {
                TotalPriceLabel.text = "N/A"
                return
            }
            
            let totalPrice = Double(selectedTicketType.price) * Double(currentQuantity)
            TotalPriceLabel.text = "\(totalPrice)"
        }
    
    @IBAction func managerButtonTapped(_ sender: UIButton) {
            performSegue(withIdentifier: "managerSegue", sender: self)
        }
        
        // Other methods and code
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "managerSegue" {
                // Handle any preparation logic for the next view controller
            }
        }
    struct TicketType {
        let name: String
        let price: Int
    }
    
}


