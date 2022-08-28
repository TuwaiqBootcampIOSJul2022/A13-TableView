//
//  BookTableViewCell.swift
//  BooksStore
//
//  Created by REOF ALMESHARI on 26/08/2022.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var bookPrice: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookCover: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
}
