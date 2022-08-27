//
//  BookCollectionViewCell.swift
//  BookStore
//
//  Created by Waad on 28/01/1444 AH.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var BookImage: UIImageView!
    
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    
    func setup(with book: Books) {
        BookImage.image = book.image
        TitleLabel.text = book.title
        priceLabel.text = "\(book.price) SR"
        
    }
    
    }
