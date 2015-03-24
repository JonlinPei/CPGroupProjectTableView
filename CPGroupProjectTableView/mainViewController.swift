//
//  mainViewController.swift
//  CPGroupProjectTableView
//
//  Created by Jonlin Pei on 3/9/15.
//  Copyright (c) 2015 Jonlin Pei. All rights reserved.
//

import UIKit

class mainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var createMessageField: UITextView!
    
    var messages: [String!] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("myMessages") as myMessages
        
        cell.previewText.text = "Taken 3"
        cell.heatIcon.image = UIImage(named: "heatIcon")
        
        return cell
    }
    
    @IBAction func submitButtonDidPress(sender: AnyObject) {
        messages.append(createMessageField.text)
        println(messages)
    }
}
