//
//  Book.swift
//  BooksApp - Maan Alsalman
//
//  Created by Maan Abdullah on 24/08/2022.
//

import Foundation
// Create Book type
struct Book{
    let title: String
    let author: String
    let price: Double
    let image: String
}

// Create an array of Book type
var books = [Book(title: "Swift", author: "Apple", price: 100, image: "Swift"),
             Book(title: "The Alchemist", author: "Paulo Coelho", price: 238, image: "The Alchemist"),
             Book(title: "Sapiens", author: "Yuval Noah Harari", price: 332, image: "Sapiens"),
             Book(title: "The Blue Umbrella", author: "Ruskin Bond", price: 95, image: "The Blue Umbrella"),
             Book(title: "Harry Potter", author: "J.K. Rowling", price: 326, image: "Harry Potter"),
             Book(title: "To Kill a Mockingbrd", author: "Harper Lee", price: 235, image: "To Kill a Mockingbrd"),
             Book(title: "Zero to One", author: "Peter Thiel", price: 379, image: "Zero to One"),
             Book(title: "Treasure Island", author: "Robert Louis Stevenson", price: 99, image: "Treasure Island"),
             Book(title: "SOPHIE'S WORLD", author: "Jostein Gaarder", price: 475, image: "SOPHIE'S WORLD"),
             Book(title: "Train to Pakistan", author: "Khushwant Singh", price: 178, image: "Train to Pakistan")]
