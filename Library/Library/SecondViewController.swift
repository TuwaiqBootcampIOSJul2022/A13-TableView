//
//  SecondViewController.swift
//  Library
//
//  Created by NosaibahMW on 27/01/1444 AH.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    @IBOutlet weak var bookPrice: UILabel!
    
    var tempBookImage: String = ""
    var tempBookTitle: String = ""
    var tempBookAuthor: String = ""
    var tempBookPrice: Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookImageView.image = UIImage(named: tempBookImage)
        bookTitle.text = tempBookTitle
        bookAuthor.text = tempBookAuthor
        bookPrice.text = "\(tempBookPrice) SR"
    }
    

}
