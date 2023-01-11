//
//  Character.swift
//  SimpsonBook
//
//  Created by Ian MacKinnon on 11/01/2023.
//

import Foundation
import UIKit

class Character{
    
    var name : String
    var job : String
    var image : UIImage
    
    init(name: String, job: String, image: UIImage) {
        self.name = name
        self.job = job
        self.image = image
    }
}
