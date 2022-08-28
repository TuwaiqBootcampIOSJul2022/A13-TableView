//
//  ViewController_2.swift
//  LibraryBooks
//
//  Created by Anaal Albeeshi on 29/01/1444 AH.
//

import UIKit

class ViewController_2: UIViewController {

    
    var immg = UIImage()
    var user1 = ""
    var nameImage = ""
    
    
    
    @IBOutlet weak var la2: UILabel!
    @IBOutlet weak var im2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        la2.text = "The Details: \(user1)"
        im2.image = immg
        
//        im2.image = UIImage(named: nameImage)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
