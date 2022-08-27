//
//  book.swift
//  Books
//
//  Created by Ruba on 27/01/1444 AH.
//

import Foundation
import UIKit

struct Book{
    var name:String
    var author:String
    var price:Double
    var img1:UIImage
}

var obj:Array<Book> = [Book(name: "The Elephant in the Brain", author: " Kevin Simler", price: 168.65, img1 : UIImage(named: "book1")!) ,
                     Book(name: "Think And Grow Rich", author: " Napoleon Hill", price: 37.75, img1: UIImage(named: "book2")!),
                       Book(name: "Zero to One", author: " Blake Masters", price: 41, img1: UIImage(named: "book3")!) ,
                       Book(name: "Good Vibes, Good Life", author: "Vex King", price: 57.95, img1: UIImage(named: "book4")!), Book(name: "1001 Words You Need To Know and Use", author: "Martin Manser", price: 53.79, img1: UIImage(named: "book5")!),
                       Book(name: "Short Stories In English", author: " Olly Richards", price: 64.14, img1: UIImage(named: "book6")!),
                       Book(name: "Simple Thinking", author: "Richard Gerver", price: 74.97, img1: UIImage(named: "book7")!) , Book(name: "The Rules of People", author: "Richard Templar", price: 74.19, img1: UIImage(named: "book8")!),Book(name: "In Five Years", author: "Rebecca Serle", price: 66, img1: UIImage(named: "book9")!),Book(name: "How To Talk To Absolutely Anyone", author: " Mark Rhodes ", price: 49, img1: UIImage(named: "book10")!),Book(name: "How to Speak So People Really Listen", author: "Paul McGee", price: 49, img1: UIImage(named: "book11")!)]



