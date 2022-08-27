//
//  TableViewCell.swift
//  sortedBookStore
//
//  Created by AlenaziHazal on 28/01/1444 AH.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var cellInterest: UILabel!
    @IBOutlet weak var cellname: UILabel!
    @IBOutlet weak var celltitle: UILabel!
    @IBOutlet weak var cellPrice: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
