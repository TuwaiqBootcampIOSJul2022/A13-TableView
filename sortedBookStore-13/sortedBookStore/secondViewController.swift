//
//  secondViewController.swift
//  sortedBookStore
//
//  Created by AlenaziHazal on 28/01/1444 AH.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var summerySort: UILabel!
    var sendimage:String = ""
    var sendName:String = ""
    var sendSummry:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDisplay.image = UIImage(named: sendimage)
        bookName.text = sendName
        summerySort.text = sendSummry
        imageDisplay.layer.cornerRadius = 16
        summerySort.layer.cornerRadius = 16
        
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
