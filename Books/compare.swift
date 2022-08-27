//
//  compare.swift
//  Books
//
//  Created by Ruba on 28/01/1444 AH.
//

import Foundation
struct Book1{
    var name:String
    var price:Double
}
let book1 = Book1.init(name: "The Elephant in the Brain", price: 168.65)
let book2 = Book1.init(name: "Think And Grow Rich", price: 37.75)
let book3 = Book1.init(name: "Zero to One", price: 41)
let book4 = Book1.init(name: "Good Vibes, Good Life", price: 57.95)
let book5 = Book1.init(name: "1001 Words You Need To Know and Use", price: 53.79)
let book6 = Book1.init(name: "Short Stories In English", price: 64.14)
let book7 = Book1.init(name: "Simple Thinking", price: 74.97)
let book8 = Book1.init(name: "The Rules of People", price: 74.19)
let book9 = Book1.init(name: "In Five Years", price: 66)
let book10 = Book1.init(name: "How To Talk To Absolutely Anyone", price: 49)
let book11 = Book1.init(name: "How to Speak So People Really Listen", price: 49)

let allBooks = [book1 , book2 , book3 ,book4 , book5 , book6 ,book7 , book8 , book9 ,book10 , book11]
func compareTwoBooks(firstBook: Book, secondBook: Book)-> Bool{
    if firstBook.price >= secondBook.price{
        return true
    }else {
        return false
    }
}
