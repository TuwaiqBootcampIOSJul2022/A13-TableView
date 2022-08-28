import UIKit


var bookInformation = [book1, book2,book3,book4,book5,book6,book7,book8]
var listBook = bookInformation
var filter1 = listBook

var Image:UIImage?
var Titel:String?
var Aauthor:String?
var Price:Int?

class ViewController: UIViewController {
    
    @IBOutlet var search: UISearchBar!
    @IBOutlet var tableView: UITableView!

    
    override func viewDidLoad() {
         super.viewDidLoad()

        tableView.register(UINib(nibName: "TableViewCell", bundle: nil) , forCellReuseIdentifier: "identifierCell")
        tableView.reloadData()
    }
    
    @IBAction func highestPrice(_ sender: Any) {
        listBook = bookInformation.sorted(){$0.itemPrice! >= $1.itemPrice!}
        tableView.reloadData()
    }
        
    @IBAction func LowestPrice(_ sender: Any) {
        listBook = bookInformation.sorted(){$0.itemPrice! <= $1.itemPrice!}
        tableView.reloadData()
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier=="ShowDetails"{
        if let a = segue.destination as? ViewController1{
            a.sendImage = Image
            a.sendTitleBook = Titel
            a.sendBookAuthor = Aauthor
            a.sendBookPrice = Price

       
    }}}





}






