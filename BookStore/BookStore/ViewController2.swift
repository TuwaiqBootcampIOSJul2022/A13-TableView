//
//  ViewController2.swift
//  BookStore
//
//  Created by Kholoud Almutairi on 28/01/1444 AH.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var LabelDetails: UILabel!
    
    var imagview = ""
    var Detils = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        image2.image = UIImage(named: imagview)
        LabelDetails.text = Detils
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
