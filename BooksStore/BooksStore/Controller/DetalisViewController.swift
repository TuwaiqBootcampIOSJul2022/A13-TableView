//
//  DetalisViewController.swift
//  BooksStore
//
//  Created by REOF ALMESHARI on 26/08/2022.
//

import UIKit

class DetalisViewController: UIViewController {
    var list = [Books]()

    @IBOutlet weak var bookCoverD: UIImageView!

   
    @IBOutlet weak var overviewBook: UILabel!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var authorName: UILabel!
    var position = 0
    override func viewDidLoad() {
        super.viewDidLoad()

    
        bookCoverD.image = list[position].bookCover
        overviewBook.text = list[position].overview
        overviewBook.font = .systemFont(ofSize: 14, weight: .light)
        authorName.font = .systemFont(ofSize: 14, weight: .light)
        authorName.text = list[position].author.authorName
        bookTitle.font = .systemFont(ofSize: 18, weight: .bold)
        bookTitle.text = list[position].bookName
    }
    

  
 

}
