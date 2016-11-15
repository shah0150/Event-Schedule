//
//  NewEventViewController.swift
//  Event Schedule
//
//  Created by Adesh Shah on 2016-11-13.
//  Copyright © 2016 shah0150@algonquinlive.com. All rights reserved.
//

import UIKit

class NewEventViewController: UIViewController {

    var delegate: eventPassing?
    
    @IBOutlet weak var myEventTitle: UITextField!
    @IBOutlet weak var myEventDescription: UITextView!
    @IBOutlet weak var myEventDatePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    @IBAction func myEventCreateButton(_ sender: Any) {
        
        //Change if statement
        if(!myEventTitle.text!.isEmpty ){
            let newTitle:String = myEventTitle.text!
            let newDes: String = myEventDescription.text!
            //grab a dynamic date
            //let newDate: String = "2016/20/20 20:20"
            //let newEvent = Event(title: newTitle, description: newDes, dateString: newDate)
            let newEvent = Event()
            
            newEvent.title = newTitle
            newEvent.description = newDes
            newEvent.date = myEventDatePicker.date
            
            delegate?.passData(myEvent: newEvent)
            
            _ = navigationController?.popViewController(animated: true)
            
            //navigationController.popToRootViewController(animated: true)
            
            //self.navigationController?.popViewController(animated: true)
            print("Button Tapped!")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
