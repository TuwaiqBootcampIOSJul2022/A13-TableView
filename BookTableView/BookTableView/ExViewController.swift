//
//  ExViewController.swift
//  BookTableView
//
//  Created by Kholoud Almutairi on 29/01/1444 AH.
//

import Foundation
import UIKit

extension ViewController : UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if serch{
            return listBook.count
        }else{
            
        return listProdect.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyListTabel.dequeueReusableCell(withIdentifier: "custemCell", for: indexPath) as! CustemCell
        
        if serch {
            
            cell.imagPro.image = UIImage(named: listBook[indexPath.row].image)
            cell.labelTitel.text = "\(listBook[indexPath.row].titel)"
            cell.labelAuthor.text = "\(listBook[indexPath.row].nameAuthor)"
            cell.labelPrice.text = " \(listBook[indexPath.row].price) "
            
        }else {
                       cell.labelTitel.text = listProdect[indexPath.row].titel
                       cell.labelAuthor.text = listProdect[indexPath.row].nameAuthor
                       cell.labelPrice.text = ("\(listProdect[indexPath.row].price)")
                       cell.imagPro.image = UIImage(named: listProdect[indexPath.row].image)
                                                    
        }
        
        return cell
                                                    
    }
    
    
}

