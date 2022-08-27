
import UIKit

class BookDetail: UIViewController {
    
    @IBOutlet weak var viewBookImage: UIImageView!
    @IBOutlet weak var viewBookTitle: UILabel!
    @IBOutlet weak var viewBookAuthor: UILabel!
    @IBOutlet weak var viewBookPrice: UILabel!
    @IBOutlet weak var viewBookDescription: UITextView!
    
    var viewTitle: String?
    var viewAuthor: String?
    var viewPrice: Double?
    var viewImage: UIImage?
    var viewDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewBookTitle.text = viewTitle
        viewBookAuthor.text = viewAuthor
        viewBookPrice.text = "$\(viewPrice!)"
        viewBookImage.image = viewImage
        viewBookDescription.text = viewDescription
    }
}
