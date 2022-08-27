//
//  ViewController.swift
//  myLibrary
//
//  Created by Razan Abdullah on 29/01/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! bookTableViewCell
        cell.titleLabel.text = books[indexPath.row].title
        cell.priceLabel.text = "\(books[indexPath.row].price) SAR"
        cell.authorLabel.text = books[indexPath.row].author
        cell.imageOfCover.image = UIImage(named: "\(books[indexPath.row].imageOfBook)")
    
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       performSegue(withIdentifier: "transformData", sender: nil)
    }
    
  
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }


}

