//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ian MacKinnon on 11/01/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var charArray = [Character]()
    var chosenChar : Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let homer = Character(name: "Homer Simpson", job: "Nuclear Saftey Technition", image: UIImage(named: "homer")!)
        
        let marge = Character(name: "Marge Simpson", job: "SAHM", image: UIImage(named: "marge")!)
        
        let bart = Character(name: "Bart Simpson", job: "School nuisance", image: UIImage(named: "bart")!)
        
        let lisa = Character(name: "Lisa Simpson", job: "School saviour", image: UIImage(named: "lisa")!)
        
        let maggie = Character(name: "Maggie Simpson", job: "Baby", image: UIImage(named: "maggie")!)
        
        charArray.append(homer)
        charArray.append(marge)
        charArray.append(bart)
        charArray.append(lisa)
        charArray.append(maggie)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = charArray[indexPath.row].name
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenChar = charArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toDetailVC"){
            let destinationVC = segue.destination as! detailsViewController
            destinationVC.selectedChar = chosenChar
        }
    }
}

