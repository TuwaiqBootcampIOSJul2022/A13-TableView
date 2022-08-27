//
//  bookTableViewCell.swift
//  myLibrary
//
//  Created by Razan Abdullah on 29/01/1444 AH.
//

import UIKit

class bookTableViewCell: UITableViewCell {

    @IBOutlet weak var imageOfCover: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
