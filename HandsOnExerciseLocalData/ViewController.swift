//
//  ViewController.swift
//  HandsOnExerciseLocalData
//
//  Created by Indra Sumawi on 02/07/19.
//  Copyright © 2019 Indra Sumawi. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var numOfStudentsTextField: UITextField!
    
    //variables

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //setup table view

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //load data from user default
        //insert code here//
        //load data from core data
        //insert code here//
        tableView.reloadData()
    }

    @IBAction func saveButton(_ sender: Any) {
        //insert code here//
        
    }
    
    @IBAction func addButton(_ sender: Any) {
        //insert code here//
        
        tableView.reloadData()
        
        schoolNameTextField.text = ""
        numOfStudentsTextField.text = ""
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schoolArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tvCell", for: indexPath)
        
        let school = schoolArray[indexPath.row]
        
        cell.textLabel?.text = school.name! + " (\(school.numOfStudents))"
        
        return  cell
    }
}
