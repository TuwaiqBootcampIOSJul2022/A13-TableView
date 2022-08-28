
import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var imgeView: UIImageView!
    @IBOutlet var labelTitel:UILabel!
    @IBOutlet var labelPrice:UILabel!
    @IBOutlet var labelAauthor:UILabel!
    
 
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
