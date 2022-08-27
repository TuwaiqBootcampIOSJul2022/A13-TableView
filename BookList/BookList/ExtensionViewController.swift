
import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookListfilter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellName", for: indexPath) as! MyCell
        
        cell.bookTitle.text = "Title: \(bookListfilter[indexPath.row].title)"
        cell.bookAuthor.text = "Author: \(bookListfilter[indexPath.row].author)"
        cell.bookPrice.text = "Price: $\(bookListfilter[indexPath.row].price)"
        cell.bookImage.image = bookListfilter[indexPath.row].image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        itemTitle = bookListfilter[indexPath.row].title
        itemAuthor = bookListfilter[indexPath.row].author
        itemPrice = bookListfilter[indexPath.row].price
        itemImage = bookListfilter[indexPath.row].image
        itemDescription = bookListfilter[indexPath.row].description
        
        performSegue(withIdentifier: "showBookDetail", sender: nil)
    }
    // search Bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText == ""{
            bookListfilter = bookList
            bookTableView.reloadData()
        }else{
            bookListfilter = bookList.filter({( book : Book) -> Bool in
                return book.title.lowercased().contains(searchText.lowercased())})
            bookTableView.reloadData()
        }
    }
}
