//
//  BooksCell.swift
//  LibraryBooks
//
//  Created by Anaal Albeeshi on 29/01/1444 AH.
//

import UIKit

class BooksCell: UITableViewCell {
    
    
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var buttonL: UIButton!
    @IBOutlet weak var pageL: UILabel!
    @IBOutlet weak var AgeL: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
        
        func setupCell (photo: UIImage, titiel_name: String,
                        price_1: Double,
                        author_1: String,
                        Age: Int,
                        page: Int){
           
            image1.image = photo
            title.text = titiel_name
            price.text = "\(price_1) SAR "
            author.text = author_1
            pageL.text = "pages:\(page)"
            AgeL.text = "Age:\(Age)"
        }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
