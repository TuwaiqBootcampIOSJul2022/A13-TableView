import UIKit

extension ViewController: UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listBook.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifierCell", for: indexPath ) as! TableViewCell
        cell.imageView?.image = bookInformation[indexPath.row].itemImage
        cell.labelTitel?.text = " The title of the book: \(bookInformation[indexPath.row].itemTitel!) "
        cell.labelAauthor?.text = " Book Author: \(bookInformation[indexPath.row].itemAauthor!)"
        cell.labelPrice?.text = " Book Price: \(bookInformation[indexPath.row].itemPrice!) $"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Image = bookInformation[indexPath.row].itemImage
        Titel = bookInformation[indexPath.row].itemTitel
        Aauthor = bookInformation[indexPath.row].itemAauthor
        Price = bookInformation[indexPath.row].itemPrice
        performSegue(withIdentifier: "ShowDetails", sender: nil)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            listBook = bookInformation
            tableView.reloadData()
        }else{
            filter1 = bookInformation.filter({(book : Elements ) -> Bool in
                return book.itemTitel!.lowercased().contains(searchText.lowercased())
            })
            listBook = filter1
            tableView.reloadData()
        }
}
}




