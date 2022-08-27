//
//  BookDetailSceneViewController.swift
//  BooksApp - Maan Alsalman
//
//  Created by Maan Abdullah on 24/08/2022.
//

import UIKit

class BookDetailScene: UIViewController {

    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookPriceLabel: UILabel!
    @IBOutlet weak var bookImageView: UIImageView!
    var cellClicked: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpValues()
    }
  
   func setUpValues(){
       bookNameLabel.text = "Title: \(FilteredBooks[cellClicked].title)"
       bookAuthorLabel.text = "Author: \(FilteredBooks[cellClicked].author)"
       bookPriceLabel.text = "Price: \(FilteredBooks[cellClicked].price)$"
       bookImageView.image = UIImage(named: FilteredBooks[cellClicked].image)
    }
}
