//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages: [Message] = [
        Message(sender: "1@2.com", body: "Hey"),
        Message(sender: "a@b.com", body: "Hey"),
        Message(sender: "1@2.com", body: "What's up?")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        //hide back button in on this screen
        self.navigationItem.hidesBackButton = true
        
        title = K.appName
        tableView.dataSource = self
        
        //tableView.delegate = self // we don't need this functionality here 
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        //let firebaseAuth = Auth.auth()
        do {
            try Auth.auth().signOut()
            //navigates to the very first view and displays the viewcontroller (the welcome screen in this case)
            navigationController?.popToRootViewController(animated: true)
            
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
}

//the UITableViewDataSource is the delegate responsible for populating the tableview
extension ChatViewController: UITableViewDataSource {
    //method returns number of rows in the table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //indexPath = position. the method return a ui table view cell that it should display in each row (indexpath)
        //so we will create a cell and return it to the tableview
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        //pass data into the cell
        cell.textLabel?.text = messages[indexPath.row].body
        return cell
    }
}

////used to handle what happens when a particular row is selected in the tableview, but we don't need that functionality here
//extension ChatViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//    }
//}
