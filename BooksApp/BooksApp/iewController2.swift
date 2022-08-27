//
//  iewController2.swift
//  BooksApp
//
//  Created by Hessa on 27/01/1444 AH.
//

import UIKit

class iewController2: UIViewController {

    @IBOutlet weak var imagebook: UIImageView!
    
    @IBOutlet weak var leab1: UILabel!
    
    
    var image = UIImage()
     var title1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leab1.text = "\(title1)"
        imagebook.image = image
    }
    

    

}
