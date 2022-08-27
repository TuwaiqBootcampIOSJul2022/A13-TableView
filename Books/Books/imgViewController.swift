//
//  imgViewController.swift
//  Books
//
//  Created by Ruba on 27/01/1444 AH.
//

import UIKit

class imgViewController: UIViewController {
    var nameImg = ""
    var namelabel = ""
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var image1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       label4.text = namelabel
        image1.image = UIImage(named: nameImg)
    }
}


   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


