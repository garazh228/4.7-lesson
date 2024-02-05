//
//  TransferValidationProtocol.swift
//  4.7 lesson
//
//  Created by adyl CEO on 05/02/2024.
//

import Foundation


protocol TransferValidation {
    func isValidCardNumber(_ cardNumber: String) -> Bool
    func isValidTransferAmount(_ amount: Double, fromBalance balance: Double) -> Bool
}


class CheckProtocolFunc: TransferValidation {
    func isValidTransferAmount(_ amount: Double, fromBalance balance: Double) -> Bool {
        return amount > 20 && amount <= balance
    }
    
    
    func isValidCardNumber(_ cardNumber: String) -> Bool {
        if cardNumber.count == 16 {
            for character in cardNumber {
                if !character.isNumber {
                    return false
                }
            }
            
            return true
            
        } else {
            return false
        }
    }
}
