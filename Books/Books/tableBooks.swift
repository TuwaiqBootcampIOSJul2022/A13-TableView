//
//  tableBooks.swift
//  Books
//
//  Created by Faisal Almutairi on 28/01/1444 AH.
//

import Foundation

struct Book {
    
    var bookImages: String
    var title: String
    var author: String
    var price: Double
}

let book1 = Book(bookImages:"cloud" ,title: "Cloud Management and Security", author: "Imad Abbadi",price: 50.0)
let book2 = Book(bookImages:"data-lakes" ,title: "Data Lakes ", author: "Alan Simon",price: 160.0)
let book3 = Book(bookImages:"hacks" ,title: "Gray Hat Hacking", author: "Allen Harper",price: 200.0)
let book4 = Book(bookImages:"Mastering-Windows" ,title: "Mastering Windows", author: "John Savil",price: 70.0)
let book5 = Book(bookImages:"python" ,title: "Python Project", author: "Laura Cassell",price: 250.0)
let book6 = Book(bookImages:"black" ,title: "The Fantasy Football Black Book", author: "Joe Pisapia",price: 85.0)
let book7 = Book(bookImages:"bryant" ,title: "The Mamba Mentality", author: "Kobe Bryant",price: 130.0)
let book8 = Book(bookImages:"shoot" ,title: "Shoot Your Shot", author: "Vernon Brundage Jr.",price: 40.0)
let book9 = Book(bookImages:"family" ,title: "The Family Across the Street", author: "Nicole Trope",price: 65.0)
let book10 = Book(bookImages:"door" ,title: "The Locked Door", author: "Freida McFadden",price: 10.0)




var allBooks = [book1 , book2, book3 , book4 , book5 ,book6 ,book7 ,book8 ,book9 ,book10]


  
