import UIKit

let dictionaryKey = "myDictionary"

let defaults = UserDefaults.standard
defaults.set(0.24, forKey: "Volume")
defaults.set(true, forKey: "MusicOn")
defaults.set("Angela", forKey: "PlayerName")
defaults.set(Date(), forKey: "AppLastOpenedByUser")
let array: [Int] = [1, 2, 3]
defaults.set(array, forKey: "MyArray")
let dictionary = ["Name": "Sutaro"]
defaults.set(dictionary, forKey: dictionaryKey)


let volume = defaults.float(forKey: "Volume")
let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")
let myArray = defaults.array(forKey: "MyArray") as! [Int]
let myDictionary = defaults.dictionary(forKey: dictionaryKey)

