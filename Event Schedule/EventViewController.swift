//
//  EventViewController.swift
//  Event Schedule
//
//  Created by Adesh Shah on 2016-11-14.
//  Copyright © 2016 shah0150@algonquinlive.com. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
    @IBOutlet weak var myEventTextTitle: UITextView!
    @IBOutlet weak var myEventTextDesc: UITextView!

    @IBOutlet weak var myEventTextDate: UITextView!
    
    
    var Event: Event?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let events = Event{
        myEventTextTitle.text = events.title
        myEventTextDesc.text = events.description
        myEventTextDate.text = events.date.description
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
