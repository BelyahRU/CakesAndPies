//
//  RandomPromo.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import Foundation
struct RandomPromo {
    
    static func generatePromoCode() -> String {
        let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var promoCode = ""

        for _ in 0..<5 {
            let randomIndex = Int.random(in: 0..<characters.count)
            let randomCharacter = characters[characters.index(characters.startIndex, offsetBy: randomIndex)]
            promoCode += String(randomCharacter) + " "
        }
        
        let lastRandomIndex = Int.random(in: 0..<characters.count)
        let lastRandomCharacter = characters[characters.index(characters.startIndex, offsetBy: lastRandomIndex)]
        promoCode += String(lastRandomCharacter)

        return promoCode
    }

}
