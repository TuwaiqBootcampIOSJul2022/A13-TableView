//
//  CustemCell.swift
//  BookTableView
//
//  Created by Kholoud Almutairi on 29/01/1444 AH.
//

import UIKit

class CustemCell: UITableViewCell {
    
    @IBOutlet weak var labelAuthor: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelTitel: UILabel!
    @IBOutlet weak var imagPro: UIImageView!
     

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
