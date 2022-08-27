//
//  SecondViewController.swift
//  BookStore
//
//  Created by Waad on 29/01/1444 AH.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imagePoster: UIImageView!
    
    @IBOutlet weak var bookTitle: UILabel!
    
    @IBOutlet weak var AuthorName: UILabel!
    
    @IBOutlet weak var BookPrice: UILabel!
    
    
    var imageposter: UIImage?
    var titleBook: String?
    var authorname: String?
    var bookprice: Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePoster.image = imageposter
        bookTitle.text    = "Book Title : " + titleBook!
        AuthorName.text   = "Author Name : " + authorname!
        BookPrice.text    = "Book Price : \(bookprice!)"
        
        

    }

}
