//
//  TableViewCell.swift
//  BookStore
//
//  Created by Kholoud Almutairi on 28/01/1444 AH.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var LName: UILabel!
    @IBOutlet weak var LAuthor: UILabel!
    @IBOutlet weak var Lprice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
