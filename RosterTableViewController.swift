//
//  RosterTableViewController.swift
//  Nomads Ultimate
//
//  Created by Michael McKay  on 4/30/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class RosterTableViewController: UITableViewController {
    
    var ref: DatabaseReference?
    var handle: DatabaseHandle?
    // Get a reference to the storage service using the default Firebase App
    
    // Create a storage reference from our storage service
    
    
    
    @IBOutlet var rosterTable: UITableView!
    var players = [roster]()
    var p = [String]()
    var test = [String]()
    //private let refresh = UIRefreshControl()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /* let alec = roster(name: "Alec McCleary", homeTown: "Chapel Hill, NC", birthday: "April 20, 1998", experience: "5 Years", number: "20", height: "5' 7''", weight: "125lbs")
        players.append(alec)
        
        */
        /*if #available(iOS 10.0, *){
            tableView.refreshControl = refresh
        }else{
            tableView.addSubview(refresh)
        }*/
        //self.refresh.addTarget(self, action: #selector(refreshRoster), for: .valueChanged)
      
        ref = Database.database().reference()
        
        
        initPlayers()
        initTable()

        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.p.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = self.p[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedIndex = indexPath.row
        //performSegue(withIdentifier: "showDetails", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? RosterViewController {
            destination.Roster = players[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
 
    
    
    
    
    func initPlayers(){
        
        let groupT = DispatchGroup()
        let q = ref?.child("nomadsRoster").queryOrdered(byChild: "Name")
        q?.observeSingleEvent(of: .value){
            (snapshot) in
            for child in snapshot.children.allObjects as! [DataSnapshot]{
                
                let value = child.value as! NSDictionary
                if value["Name"] != nil{
                let bday = value["Birthday"] as? String ?? ""
                let exp = value["Experience"] as? String ?? ""
                let height = value["Height"] as? String ?? ""
                let homeTown = value["Hometown"] as? String ?? ""
                let name = value["Name"] as? String ?? ""
                let weight = value["Weight"] as? String ?? ""
                let num = value["Number"] as? String ?? ""
                
                let tempR = roster(name: name, homeTown: homeTown, birthday: bday, experience: exp, number: num, height: height, weight: weight)
                
                self.players.append(tempR)
                }
            }
            self.rosterTable.delegate = self
            self.rosterTable.dataSource = self
        }
        
    
    }
    
    @objc func initTable(){
        
        let query = ref?.child("nomadsRoster").queryOrdered(byChild: "Name")
        query?.observeSingleEvent(of: .value){
            (snapshot) in
            for child in snapshot.children.allObjects as! [DataSnapshot]{
                let value = child.value as! NSDictionary
                let name = value["Name"] as? String ?? ""
                
                //self.test.append("Test")
                if name != ""{
                    self.p.append(name)
                    self.rosterTable.reloadData()
                }
            }
        }
     
    }

    @objc func refreshRoster(){
        self.p.removeAll()
        self.players.removeAll()
        initPlayers()
        initTable()
        
        //refresh.endRefreshing()
    }
}
