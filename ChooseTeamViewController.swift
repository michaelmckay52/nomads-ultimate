//
//  ChooseTeamViewController.swift
//  
//
//  Created by Michael McKay  on 3/25/18.
//

import UIKit

class ChooseTeamViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addTeamTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    let teams = ["Alien Mountian Nomads", "NC State", "UNCW"]
    
 /*
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        insertNewTeamName()
    }
 */
    
 /*
    func insertNewTeamName(){
        teams.append(addTeamTextField.text!)
        
        let indexPath = IndexPath(row: teams.count - 1, section: 0)
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        
        addTeamTextField.text = ""
        view.endEditing(true)
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Hides empty rows in our table
        tableView.tableFooterView = UIView(frame: CGRect.zero)
     

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

extension ChooseTeamViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return teams.count
        return(teams.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      //  let teamName = teams[indexPath.row]
      //  let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell") as! TeamCell
      //  cell.teamName.text = teamName
     //   return cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = teams[indexPath.row]
        return(cell)!
    }
    /*
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            teams.remove(at: indexPath.row)
            
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        }
    }
 */
}
