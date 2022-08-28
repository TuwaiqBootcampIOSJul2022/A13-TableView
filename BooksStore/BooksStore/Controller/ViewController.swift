//
//  ViewController.swift
//  BooksStore
//
//  Created by REOF ALMESHARI on 26/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startOutlet: UIButton!
    @IBOutlet weak var descText: UILabel!
    @IBOutlet weak var textStore: UILabel!
    @IBOutlet weak var startImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        startImg.image = UIImage(named: "pic1")
        textStore.text = "Read your favourite books"
        descText.text = "All your favourites book in one place, read any book, staying at home, on travelling, or anywhere else"

    }

    @IBAction func startAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "books") as! BooksViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

