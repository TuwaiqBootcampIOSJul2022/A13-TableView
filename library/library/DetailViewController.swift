//
//  DetailViewController.swift
//  library
//
//  Created by Farah Alyousef on 29/01/1444 AH.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    var image = UIImage()
    var abstract = ""
    var books = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = "You Selacted \(books) \(abstract)"
        img.image = image
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
