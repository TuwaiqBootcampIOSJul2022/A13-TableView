//
//  ViewController.swift
//  BooksApp
//
//  Created by Hessa on 27/01/1444 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var outbutt: UIButton!
    @IBOutlet weak var searchtitl: UISearchBar!
    
    
    @IBOutlet weak var tabvbook: UITableView!
    var addbooks = [Books]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabvbook.delegate = self
        tabvbook.dataSource = self
        outbutt.layer.cornerRadius = 8
        
        
        addbooks.append(Books.init(titel: "Chasing New Horizons", price: 20,author: "Jokha Alharthi", ima: UIImage(named: "m1")!))
        addbooks.append(Books.init(titel: "The Poison Squad", price: 30, author: "Vasdev Mohi", ima: UIImage(named: "m2")!))
        addbooks.append(Books.init(titel: "The Poison SquadThe Rise", price: 12.5, author: "", ima: UIImage(named: "m3")!))
        addbooks.append(Books.init(titel: "Lost in Math", price: 33.4,author: "Richard Powers",  ima: UIImage(named: "m4")!))
        
        addbooks.append(Books.init(titel: "First in fily", price: 10.5, author: "Narendra", ima: UIImage(named: "m5")!))
        addbooks.append(Books.init(titel: "Mother's Laugh", price: 55,author: "William",  ima: UIImage(named: "m6")!))
        
        addbooks.append(Books.init(titel: "Close Encounters", price: 12.5, author: "", ima: UIImage(named: "m7")!))
        addbooks.append(Books.init(titel: "Wilding", price: 30.3, author: "Barbara", ima: UIImage(named: "m8")!))
        addbooks.append(Books.init(titel: "", price: 40.3, author: "Barbara", ima: UIImage(named: "m9")!))
        addbooks.append(Books.init(titel: "What the Future Looks Like", price: 20.3, author: "Danielle", ima: UIImage(named: "m10")!))
        
            
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addbooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell =  tableView.dequeueReusableCell(withIdentifier: "cell") as! HomeableViewCell
        let data = addbooks[indexPath.row]
        cell.setupcell(photo: data.ima, titl: data.titel, prc: data.price, Auth: data.author)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "iewController2") as? iewController2
        vc!.title1 = addbooks[indexPath.row].titel
        vc!.image = addbooks[indexPath.row].ima


        self.navigationController?.pushViewController(vc!, animated: true)
    
    }

    @IBAction func seqmen(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            addbooks.sort(by: {$0.price < $1.price})
            


        }
        else if sender.selectedSegmentIndex == 1 {
            addbooks.sort(by: {$0.price > $1.price})

        }
        tabvbook.reloadData()
    }
 
}
struct Books {
    let titel: String!
    let price : Double!
    let author: String!
    let ima:UIImage!
  

}




