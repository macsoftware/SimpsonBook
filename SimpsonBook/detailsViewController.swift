//
//  detailsViewController.swift
//  SimpsonBook
//
//  Created by Ian MacKinnon on 11/01/2023.
//

import UIKit

class detailsViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedChar : Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedChar?.name
        jobLabel.text = selectedChar?.job
        imageView.image = selectedChar?.image        
        
    }
    


}
