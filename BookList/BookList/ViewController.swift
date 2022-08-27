
import UIKit

var bookList = [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10]
var bookListfilter = bookList

var itemTitle: String?
var itemAuthor: String?
var itemPrice: Double?
var itemImage: UIImage?
var itemDescription: String?

class ViewController: UIViewController {

    @IBOutlet weak var bookTableView: UITableView!
    @IBOutlet weak var searchBarOutlet: UISearchBar!
    @IBOutlet weak var segmentControlOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bookTableView.register(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "cellName")
        bookTableView.reloadData()
    }
    // to update table after add book
    override func viewWillAppear(_ animated: Bool) {
        bookListfilter = bookList
        bookTableView.reloadData()
    }
    // Price high to low & low to high
    @IBAction func filterByPrice(_ sender: Any) {
        
        switch segmentControlOutlet.selectedSegmentIndex {
        case 0:
            bookListfilter = bookList.sorted(){$0.price >= $1.price}
            bookTableView.reloadData()
        case 1:
            bookListfilter = bookList.sorted(){$0.price <= $1.price}
            bookTableView.reloadData()
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBookDetail"{
            if let viewVC = segue.destination as? BookDetail{
                viewVC.viewTitle = itemTitle
                viewVC.viewAuthor = itemAuthor
                viewVC.viewPrice = itemPrice
                viewVC.viewImage = itemImage
                viewVC.viewDescription = itemDescription
            }
        }
    }
}
