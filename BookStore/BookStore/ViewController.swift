//  ViewController.swift
//  BookStore
//
//  Created by Waad on 28/01/1444 AH.
//

import UIKit

class ViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate {

    @IBOutlet weak var BooksCollection: UICollectionView!
   
    var searching = false
    var searchBook  = [Books]()
    let searchController = UISearchController(searchResultsController: nil)
    
    var index:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

          BooksCollection.dataSource = self
          BooksCollection.delegate   = self
          BooksCollection.collectionViewLayout = UICollectionViewFlowLayout()
          configureSearchController()
    
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
        let segmentIndex = sender.selectedSegmentIndex
       
        switch segmentIndex {
        case 0:
            books.sort(by: {$0.price > $1.price})
            
        case 1:
            books.sort(by: {$0.price < $1.price})
            
        default:
            break
        }
        BooksCollection.reloadData()
    }
    private func configureSearchController()
    {
        searchController.loadViewIfNeeded()
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate   = self
        searchController.searchBar.enablesReturnKeyAutomatically = false
        searchController.searchBar.returnKeyType = UIReturnKeyType.done
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.searchController = searchController
        definesPresentationContext = true
        searchController.searchBar.placeholder = "Search Book by Title"
    
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
        let searchText = searchController.searchBar.text!
        if !searchText.isEmpty
        {
            searching = true
            searchBook.removeAll()
            
            for book in books
            {
                if book.title.lowercased().contains(searchText.lowercased())
                {
                    searchBook.append(book)
                }
            }
        }
        else
        {

            searching = false
            searchBook.removeAll()
            searchBook = books
        }

        BooksCollection.reloadData()
    }
    
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBook.removeAll()
        BooksCollection.reloadData()
    }


}

extension ViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
                if searching
                {
                    return searchBook.count
                }
                else
                {
                    return books.count
                }

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath)as! BookCollectionViewCell
        
        if searching {
            cell.TitleLabel.text = searchBook[indexPath.item].title
            cell.BookImage.image = searchBook[indexPath.item].image
//            cell.priceLabel.text = searchBook[indexPath.item].price
        }
        else
        {
            cell.setup(with: books[indexPath.item])
        }
    
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        index = indexPath.row
        performSegue(withIdentifier: "moveToDetails", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToDetails" {
            if let secondVC = segue.destination as?
                SecondViewController
            {
                secondVC.imageposter = books[index!].image
                secondVC.bookprice   = books[index!].price
                secondVC.titleBook   = books[index!].title
                secondVC.authorname  = books[index!].author
        }
    }
}


}
extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let columns: CGFloat = 2
        let collectionViewWidth = collectionView.bounds.width
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let spaceBetweenCells = flowLayout.minimumInteritemSpacing * (columns - 1)
        let sectionInsets = flowLayout.sectionInset.left + flowLayout.sectionInset.right
        let adjustedWidth = collectionViewWidth - spaceBetweenCells - sectionInsets
        let width: CGFloat = floor(adjustedWidth / columns)
        let height: CGFloat = width / 1.5
        return CGSize(width: width, height: height)
    }
}

