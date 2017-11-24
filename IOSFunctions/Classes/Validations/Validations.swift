//
//  Validations.swift
//  IOSFunctions
//
//  Created by Apple on 24/11/17.
//

import Foundation
import UIKit

public class Validations {
    
    public class func isRestrictNumberCharacters(string:String)->Bool{
        let invalidCharacters = NSCharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public class func isRestrictAlphaCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public class func isRestrictEmailWithAtTheRateCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-.@").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public class func isRestrictEmailWithoutAtTheRateCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-.").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public class func isRestrictAlphaNumericCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890,#. ").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public class func isRestrictCityCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public class func isRestrictAddressCharacters(string: String) -> Bool {
        let invalidCharacters = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890_-. /\\|,:'").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    public class func onlyNumeric(textString:String,maximumTextLength:Int) -> Bool {
        var returnValue = false
        if (textString.characters.count>maximumTextLength) {
            return false
        }
        if (textString.characters.count==1 && textString == "0") {
            return false
        }
        else
        {
            let alphaNum = "[0-9]+"
            let regexTest = NSPredicate(format: "SELF MATCHES %@", alphaNum)
            
            if (regexTest.evaluate(with: textString)==false) {
                if (textString.characters.count==0) {
                    return true
                }
                returnValue = false
            }
            else
            {
                returnValue = true
            }
        }
        
        return returnValue
    }
    
    public class func onlyAlphabets(textString:String,maximumTextLength:Int) -> Bool {
        var returnValue = false
        
        if (textString.characters.count>maximumTextLength) {
            return false
        }
        let alphaNum = "[a-zA-Z]+"
        let regexTest = NSPredicate(format: "SELF MATCHES %@", alphaNum)
        
        if (regexTest.evaluate(with: textString)==false) {
            if (textString.characters.count==0) {
                return true
            }
            returnValue = false
        }
        else
        {
            returnValue = true
        }
        
        return returnValue
    }
    
}
