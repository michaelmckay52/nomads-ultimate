//
//  roster.swift
//  Nomads Ultimate
//
//  Created by Michael McKay  on 4/30/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//
import UIKit

class roster {
    var name: String
    var homeTown: String
    var image: UIImage?
    var birthday: String
    var experience: String
    var number: String
    var height: String
    var weight: String
    var images = ["Aidan Todd": #imageLiteral(resourceName: "Aidan Todd"), "Alec McCleary": #imageLiteral(resourceName: "Alec McCleary"), "Anthony Hengst": #imageLiteral(resourceName: "Anthony Hengst"), "Benj Thomsen": #imageLiteral(resourceName: "Benj Thomsen"), "Brian Maulucci": #imageLiteral(resourceName: "Brian Maulucci"), "Caleb Louie": #imageLiteral(resourceName: "Caleb Louie"), "Chase Parks": #imageLiteral(resourceName: "Chase Parks"), "Harrison Karlok": #imageLiteral(resourceName: "Harrison Karlok"), "Jacob Louie": #imageLiteral(resourceName: "Jacob Louie"), "Joseph Cugliari": #imageLiteral(resourceName: "Joseph Cugliari"), "Kennedy Wilkins": #imageLiteral(resourceName: "Kennedy Wilkins"), "Logan Morrow": #imageLiteral(resourceName: "Logan Morrow"), "Matthew McDaniel": #imageLiteral(resourceName: "Matthew McDaniel"), "Michael McKay": #imageLiteral(resourceName: "Michael McKay"), "Myles Grady": #imageLiteral(resourceName: "Myles Grady"), "Nick Baronciani": #imageLiteral(resourceName: "Nick Baronciani"), "Nick Simpson": #imageLiteral(resourceName: "Nick Simpson"), "Nile LaTowsky": #imageLiteral(resourceName: "Nile LaTowsky"), "Otto Solberg": #imageLiteral(resourceName: "Otto Solberg"), "Patrick Arsena": #imageLiteral(resourceName: "Patrick Arsena"), "Paul Summerville": #imageLiteral(resourceName: "Paul Summerville"), "Raj Patel": #imageLiteral(resourceName: "Raj Patel"), "Spencer Colwell": #imageLiteral(resourceName: "Spencer Colwell"), "Stephen Stanish": #imageLiteral(resourceName: "Stephen Stanish"), "Troy Miller": #imageLiteral(resourceName: "Troy Miller"), "Tyler Morse": #imageLiteral(resourceName: "Tyler Morse"), "Zach Johnson": #imageLiteral(resourceName: "Zach Johnson"), "Zach Lewis": #imageLiteral(resourceName: "Zach Lewis"), "default": #imageLiteral(resourceName: "Coming Soon")]
    
    init(name: String, homeTown: String, birthday: String, experience: String, number: String, height: String, weight: String) {
        self.name = name
        self.homeTown = homeTown
        self.birthday = birthday
        self.experience = experience
        self.number = number
        self.height = height
        self.weight = weight
        
        // for loop that loops through images and looks for image with the name
        
       
        for pic in images{
            print(pic.key)
            print(name)
            if(self.name == pic.key){
                image = images[self.name]!
            }else{
                image = images["default"]!
            }
        }
        
        image = UIImage(named: self.name)!
    
    }
}
