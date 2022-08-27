

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    var bookController = BookController()
    var myBooks = [BookModel]()
    @IBOutlet weak var filteredText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myBooks = bookController.bookList()
        myBooks.sort(by: {$0.bookPrice < $1.bookPrice})
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: "TableViewCell",bundle: nil),forCellReuseIdentifier: "TableViewCell")
       
    }

    @IBAction func SegmentTapped(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            myBooks.sort(by: {$0.bookPrice < $1.bookPrice})
        }else
        {
            myBooks.sort(by: {$0.bookPrice > $1.bookPrice})
        }
        table.reloadData()
    }
    
    @IBAction func btnSearch(_ sender: Any) {
        guard let text = filteredText.text,!text.isEmpty else
        {
            myBooks = bookController.bookList()
            myBooks.sort(by: {$0.bookPrice < $1.bookPrice})
            table.reloadData()
            return
        }
        myBooks =  myBooks.filter({$0.bookTitle.lowercased().contains(text.lowercased())})
        
        table.reloadData()
        
    }
}

extension ViewController : UITableViewDataSource
{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.myBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        else{return UITableViewCell()}
        cell.bookAuthor.text = myBooks[indexPath.row].bookAuthor
        cell.bookPrice.text = String (myBooks[indexPath.row].bookPrice)
        cell.bookTitle.text = myBooks[indexPath.row].bookTitle
        cell.bookAuthor.text = myBooks[indexPath.row].bookAuthor
        cell.bookImage.image = UIImage(named: myBooks[indexPath.row].bookPicName)
       return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}

extension ViewController : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("I'm Tapped \(indexPath.row)")
        if  let bookDetails = self.storyboard?
              .instantiateViewController(identifier: "bookDetailsController") as? bookDetailsController{
            bookDetails.book = myBooks[indexPath.row]
      navigationController?.pushViewController(bookDetails, animated: true)
        }
    }
}
