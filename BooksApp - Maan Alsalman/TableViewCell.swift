//
//  TableViewCell.swift
//  BooksApp - Maan Alsalman
//
//  Created by Maan Abdullah on 24/08/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var titleBookLabel: UILabel!
    @IBOutlet weak var authorBookLabel: UILabel!
    @IBOutlet weak var priceBookLabel: UILabel!
    @IBOutlet weak var imageBook: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(title: String, author: String, price: Double, image: String){
        titleBookLabel.text = "Title: \(title)"
        authorBookLabel.text = "Author: \(author)"
        priceBookLabel.text = "Price: \(price)$"
        imageBook.image = UIImage(named: image)
    }
}
