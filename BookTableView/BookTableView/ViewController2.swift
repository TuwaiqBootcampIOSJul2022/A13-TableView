//
//  ViewController2.swift
//  BookTableView
//
//  Created by Kholoud Almutairi on 29/01/1444 AH.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var image2: UIImageView!    
    @IBOutlet weak var labelNameAouther: UILabel!
    @IBOutlet weak var labelPrice2: UILabel!
    @IBOutlet weak var labelTitel2: UILabel!
    var image3 = ""
    var nameAuthor2 = ""
    var price2 = ""
   var titel2 = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        image2.image = UIImage(named:image3)
        labelTitel2.text = titel2
        labelPrice2.text = price2
        labelNameAouther.text = nameAuthor2
    

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
