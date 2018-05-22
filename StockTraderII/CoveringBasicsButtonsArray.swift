//
//  CoveringBasicsButtonsArray.swift
//  StockTraderII
//
//  Created by Francisco on 22/05/2018.
//  Copyright © 2018 Francisco Ruiz. All rights reserved.
//


import Foundation
import UIKit

extension CollectionLevelsViewController {
    
    
    func basicsButtonArray(currentPage:Int) -> [UIButton]? {
        
        
        
        
        let defaults = UserDefaults.standard
        
        
        
        print("user count is: \(String(describing: defaults.object(forKey: "userCount")))")
        
        
        
        
        
        
        var itemsLocked:[UIButton] = []
        
        
        let item1Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:240))
        item1Locked.setImage(#imageLiteral(resourceName: "cell1Locked"), for: .normal)
        item1Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item1Locked.tag = 1
        itemsLocked.append(item1Locked)
        
        let item2Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:284))
        item2Locked.setImage(#imageLiteral(resourceName: "cell2Locked"), for: .normal)
        item2Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item2Locked.tag = 2
        itemsLocked.append(item2Locked)
        
        let item3Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:179))
        item3Locked.setImage(#imageLiteral(resourceName: "cell3Locked"), for: .normal)
        item3Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item3Locked.tag = 3
        itemsLocked.append(item3Locked)
        
        let item4Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:179))
        item4Locked.setImage(#imageLiteral(resourceName: "cell4Locked"), for: .normal)
        item4Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item4Locked.tag = 4
        itemsLocked.append(item4Locked)
        
        let item5Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:302))
        item5Locked.setImage(#imageLiteral(resourceName: "cell5Locked"), for: .normal)
        item5Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item5Locked.tag = 5
        itemsLocked.append(item5Locked)
        
        let item6Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:379))
        item6Locked.setImage(#imageLiteral(resourceName: "cell6Locked"), for: .normal)
        item6Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item6Locked.tag = 6
        itemsLocked.append(item6Locked)
        
        let item7Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:412))
        item7Locked.setImage(#imageLiteral(resourceName: "cell7Locked"), for: .normal)
        item7Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item7Locked.tag = 7
        itemsLocked.append(item7Locked)
        
        let item8Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:240))
        item8Locked.setImage(#imageLiteral(resourceName: "cell8Locked"), for: .normal)
        item8Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item8Locked.tag = 8
        itemsLocked.append(item8Locked)
        
        let item9Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:379))
        item9Locked.setImage(#imageLiteral(resourceName: "cell9Locked"), for: .normal)
        item9Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item9Locked.tag = 9
        itemsLocked.append(item9Locked)
        
        let item10Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:412))
        item10Locked.setImage(#imageLiteral(resourceName: "cell10Locked"), for: .normal)
        item10Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item10Locked.tag = 10
        itemsLocked.append(item10Locked)
        
        
        var itemsUnlocked:[UIButton] = []
        
        
        
        let item1Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:240))
        item1Unlocked.setImage(#imageLiteral(resourceName: "Cell1"), for: .normal)
        item1Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item1Unlocked.tag = 1
        itemsUnlocked.append(item1Unlocked)
        
        let item2Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:284))
        item2Unlocked.setImage(#imageLiteral(resourceName: "Cell2"), for: .normal)
        item2Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item2Unlocked.tag = 2
        itemsUnlocked.append(item2Unlocked)
        
        let item3Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:179))
        item3Unlocked.setImage(#imageLiteral(resourceName: "Cell3"), for: .normal)
        item3Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item3Unlocked.tag = 3
        itemsUnlocked.append(item3Unlocked)
        
        let item4Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:179))
        item4Unlocked.setImage(#imageLiteral(resourceName: "Cell4"), for: .normal)
        item4Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item4Unlocked.tag = 4
        itemsUnlocked.append(item4Unlocked)
        
        let item5Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:302))
        item5Unlocked.setImage(#imageLiteral(resourceName: "Cell5"), for: .normal)
        item5Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item5Unlocked.tag = 5
        itemsUnlocked.append(item5Unlocked)
        
        let item6Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:379))
        item6Unlocked.setImage(#imageLiteral(resourceName: "Cell6"), for: .normal)
        item6Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item6Unlocked.tag = 6
        itemsUnlocked.append(item6Unlocked)
        
        let item7Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:412))
        item7Unlocked.setImage(#imageLiteral(resourceName: "Cell7"), for: .normal)
        item7Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item7Unlocked.tag = 7
        itemsUnlocked.append(item7Unlocked)
        
        let item8Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:240))
        item8Unlocked.setImage(#imageLiteral(resourceName: "Cell8"), for: .normal)
        item8Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item8Unlocked.tag = 8
        itemsUnlocked.append(item8Unlocked)
        
        let item9Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:379))
        item9Unlocked.setImage(#imageLiteral(resourceName: "Cell9"), for: .normal)
        item9Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item9Unlocked.tag = 9
        itemsUnlocked.append(item9Unlocked)
        
        let item10Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:412))
        item10Unlocked.setImage(#imageLiteral(resourceName: "Cell10"), for: .normal)
        item10Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item10Unlocked.tag = 10
        itemsUnlocked.append(item10Unlocked)
        
        
        
        
        let page_one_coveringBasicsArray = [item1Unlocked, item2Locked, item3Locked, item4Locked, item5Locked, item6Locked, item7Locked, item8Locked, item9Locked, item10Locked]
        
        let page_two_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Locked, item4Locked, item5Locked, item6Locked, item7Locked, item8Locked, item9Locked, item10Locked]
        
        let page_three_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Locked, item5Locked, item6Locked, item7Locked, item8Locked, item9Locked, item10Locked]
        
        let page_four_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Locked, item6Locked, item7Locked, item8Locked, item9Locked, item10Locked]
        
        let page_five_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Unlocked, item6Locked, item7Locked, item8Locked, item9Locked, item10Locked]
        
        let page_six_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Unlocked, item6Unlocked, item7Locked, item8Locked, item9Locked, item10Locked]
        
        let page_seven_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Unlocked, item6Unlocked, item7Unlocked, item8Locked, item9Locked, item10Locked]
        
        let page_eight_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Unlocked, item6Unlocked, item7Unlocked, item8Unlocked, item9Locked, item10Locked]
        
        let page_nine_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Unlocked, item6Unlocked, item7Unlocked, item8Unlocked, item9Unlocked, item10Locked]
        
        let page_ten_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Unlocked, item6Unlocked, item7Unlocked, item8Unlocked, item9Unlocked, item10Unlocked]
        
        
        
        var currentArray:[UIButton] = page_one_coveringBasicsArray
        
        
        
        if currentPage == 1 {
            
            currentArray = page_one_coveringBasicsArray
            
            if defaults.object(forKey: "userCount") == nil {
                
                defaults.set(1, forKey: "userCount")
                print("userCount is: \(1)")
                
                
            } else {
                
                
                if currentPage < defaults.object(forKey: "userCount") as! Int {
                    
                    print("You are already more advanced")
                    print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                    
                    
                    
                }
            }
            
            
            
            
        } else if currentPage == 2 {
            
            if currentPage < defaults.object(forKey: "userCount") as! Int {
                
                print("You are already there or more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                
                
                
            } else {
                
                defaults.set(currentPage, forKey: "userCount")
                
                
            }
            
            
            
            
            
            
            
            
            
            
        } else if currentPage == 3 {
            
            if currentPage < defaults.object(forKey: "userCount") as! Int {
                
                print("You are already there or more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                
                
            } else {
                
                
                
                defaults.set(currentPage, forKey: "userCount")
                
            }
            
            
            
            
            
            
            
            print("userCount is: \(3)")
            
            
        } else if currentPage == 4 {
            
            if currentPage < defaults.object(forKey: "userCount") as! Int {
                
                print("You are already there or more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                
                
            } else {
                
                
                defaults.set(currentPage, forKey: "userCount")
                
                
                
            }
            
            
            
            
            
            
            
            
        } else if currentPage == 5 {
            
            
            
            if currentPage < defaults.object(forKey: "userCount") as! Int {
                
                print("You are already more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                
                
            } else {
                
                
                defaults.set(currentPage, forKey: "userCount")
                
                
                
            }
            
            
        } else if currentPage == 6 {
            
            
            
            if currentPage < defaults.object(forKey: "userCount") as! Int {
                
                print("You are already more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                
                
            } else {
                
                defaults.set(currentPage, forKey: "userCount")
                
                
            }
            
            
        } else if currentPage == 7 {
            
            
            
            if currentPage < defaults.object(forKey: "userCount") as! Int {
                
                print("You are already more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                
                
            } else {
                
                defaults.set(currentPage, forKey: "userCount")
                
            }
            
        } else if currentPage == 8 {
            
            
            
            if currentPage < defaults.object(forKey: "userCount") as! Int {
                
                print("You are already more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                
                
                
            } else {
                
                defaults.set(currentPage, forKey: "userCount")
                
            }
            
        } else if currentPage ==  9 {
            
            
            
            if currentPage < defaults.object(forKey: "userCount") as! Int {
                
                print("You are already more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                
                
                
            } else {
                
                
                defaults.set(currentPage, forKey: "userCount")
                
                
            }
            
        } else if currentPage == 10 {
            
            
            
            
            
            if currentPage < defaults.object(forKey: "userCount") as! Int {
                
                print("You are already more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCount")))")
                
                
            } else {
                
                defaults.set(currentPage, forKey: "userCount")
                
                
            }
            
        }
        
        if let isFinishedValue = defaults.object(forKey: "isFinished"){
            
            if isFinishedValue as! Bool == true {
                
                defaults.set(10, forKey: "userCount")
                return page_ten_coveringBasicsArray
            }
            
        }
        
        
        
        
        
        
        
        
        
        switch defaults.object(forKey: "userCount") as! Int {
        case 1:
            return page_one_coveringBasicsArray
            
        case 2:
            return page_two_coveringBasicsArray
            
        case 3:
            
            return page_three_coveringBasicsArray
            
        case 4:
            
            return page_four_coveringBasicsArray
            
        case 5:
            
            return page_five_coveringBasicsArray
            
        case 6:
            
            return page_six_coveringBasicsArray
            
        case 7:
            
            return page_seven_coveringBasicsArray
            
        case 8:
            
            return page_eight_coveringBasicsArray
            
        case 9:
            
            return page_nine_coveringBasicsArray
            
        case 10:
            
            return page_ten_coveringBasicsArray
            
        default:
            
            return nil
        }
        
        
        
        
    }
    
    
}























extension CollectionLevelsViewController {
    
    
    
    func fundamentalsButtonArray(currentPage:Int) -> [UIButton]? {
        
        let defaults = UserDefaults.standard
        
        
        
        print("user count is for fundamentals is: \(String(describing: defaults.object(forKey: "userCountFundamentals")))")
        
        
        
        
        
        
        var itemsLocked:[UIButton] = []
        
        
        let item1Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:240))
        item1Locked.setImage(#imageLiteral(resourceName: "fundamentalsCell1Unlocked"), for: .normal)
        item1Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item1Locked.tag = 1
        itemsLocked.append(item1Locked)
        
        let item2Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:284))
        item2Locked.setImage(#imageLiteral(resourceName: "fundamentalsCell2Locked"), for: .normal)
        item2Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item2Locked.tag = 2
        itemsLocked.append(item2Locked)
        
        let item3Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:179))
        item3Locked.setImage(#imageLiteral(resourceName: "fundamentalsCell3Locked"), for: .normal)
        item3Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item3Locked.tag = 3
        itemsLocked.append(item3Locked)
        
        let item4Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:179))
        item4Locked.setImage(#imageLiteral(resourceName: "fundamentalsCell4Locked"), for: .normal)
        item4Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item4Locked.tag = 4
        itemsLocked.append(item4Locked)
        
        let item5Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:302))
        item5Locked.setImage(#imageLiteral(resourceName: "fundamentalsCell5Locked"), for: .normal)
        item5Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item5Locked.tag = 5
        itemsLocked.append(item5Locked)
        
        let item6Locked = UIButton(frame: CGRect(x:0, y:0, width:350,height:379))
        item6Locked.setImage(#imageLiteral(resourceName: "fundamentalsCell6Locked"), for: .normal)
        item6Locked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item6Locked.tag = 6
        itemsLocked.append(item6Locked)
        
        
        // End of locked buttons
        
        
        //Start of unlocked buttons
        
        var itemsUnlocked:[UIButton] = []
        
        //  Width should be 346
        
        let item1Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:240))
        item1Unlocked.setImage(#imageLiteral(resourceName: "fundamentalsCell1Unlocked"), for: .normal)
        item1Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item1Unlocked.tag = 1
        itemsUnlocked.append(item1Unlocked)
        
        let item2Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:284))
        item2Unlocked.setImage(#imageLiteral(resourceName: "fundamentalsCell2Unlocked"), for: .normal)
        item2Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item2Unlocked.tag = 2
        itemsUnlocked.append(item2Unlocked)
        
        let item3Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:179))
        item3Unlocked.setImage(#imageLiteral(resourceName: "fundamentalsCell3Unlocked"), for: .normal)
        item3Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item3Unlocked.tag = 3
        itemsUnlocked.append(item3Unlocked)
        
        let item4Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:179))
        item4Unlocked.setImage(#imageLiteral(resourceName: "fundamentalsCell4Unlocked"), for: .normal)
        item4Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item4Unlocked.tag = 4
        itemsUnlocked.append(item4Unlocked)
        
        let item5Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:302))
        item5Unlocked.setImage(#imageLiteral(resourceName: "fundamentalsCell5Unlocked"), for: .normal)
        item5Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item5Unlocked.tag = 5
        itemsUnlocked.append(item5Unlocked)
        
        let item6Unlocked = UIButton(frame: CGRect(x:0, y:0, width:350,height:379))
        item6Unlocked.setImage(#imageLiteral(resourceName: "fundamentalsCell6Unlocked"), for: .normal)
        item6Unlocked.addTarget(self, action: #selector(goToDescriptionVC), for: UIControlEvents.touchUpInside)
        item6Unlocked.tag = 6
        itemsUnlocked.append(item6Unlocked)
        
        
        
        
        
        
        
        let page_one_coveringBasicsArray = [item1Unlocked, item2Locked, item3Locked, item4Locked, item5Locked, item6Locked]
        
        let page_two_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Locked, item4Locked, item5Locked, item6Locked]
        
        let page_three_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Locked, item5Locked, item6Locked]
        
        let page_four_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Locked, item6Locked]
        
        let page_five_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Unlocked, item6Locked]
        
        let page_six_coveringBasicsArray = [item1Unlocked, item2Unlocked, item3Unlocked, item4Unlocked, item5Unlocked, item6Unlocked]
        
        
        
        
        
        var currentArray:[UIButton] = page_one_coveringBasicsArray
        
        
        
        if currentPage == 1 {
            
            currentArray = page_one_coveringBasicsArray
            
            if defaults.object(forKey: "userCountFundamentals") == nil {
                
                defaults.set(1, forKey: "userCountFundamentals")
                print("userCount is: \(1)")
                
                
            } else {
                
                
                if currentPage < defaults.object(forKey: "userCountFundamentals") as! Int {
                    
                    print("You are already more advanced")
                    print("User count is: \(String(describing: defaults.object(forKey: "userCountFundamentals")))")
                    
                    
                    
                }
            }
            
            
            
            
        } else if currentPage == 2 {
            
            if currentPage < defaults.object(forKey: "userCountFundamentals") as! Int {
                
                print("You are already there or more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCountFundamentals")))")
                
                
                
            } else {
                
                defaults.set(currentPage, forKey: "userCountFundamentals")
                
                
            }
            
            
            
            
            
            
            
            
            
            
        } else if currentPage == 3 {
            
            if currentPage < defaults.object(forKey: "userCountFundamentals") as! Int {
                
                print("You are already there or more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCountFundamentals")))")
                
                
            } else {
                
                
                
                defaults.set(currentPage, forKey: "userCountFundamentals")
                
            }
            
            
            
            
            
            
            
            print("userCount is: \(3)")
            
            
        } else if currentPage == 4 {
            
            if currentPage < defaults.object(forKey: "userCountFundamentals") as! Int {
                
                print("You are already there or more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCountFundamentals")))")
                
                
            } else {
                
                
                defaults.set(currentPage, forKey: "userCountFundamentals")
                
                
                
            }
            
            
            
            
            
            
            
            
        } else if currentPage == 5 {
            
            
            
            if currentPage < defaults.object(forKey: "userCountFundamentals") as! Int {
                
                print("You are already more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCountFundamentals")))")
                
                
            } else {
                
                
                defaults.set(currentPage, forKey: "userCountFundamentals")
                
                
                
            }
            
            
        } else if currentPage == 6 {
            
            
            
            if currentPage < defaults.object(forKey: "userCountFundamentals") as! Int {
                
                print("You are already more advanced")
                print("User count is: \(String(describing: defaults.object(forKey: "userCountFundamentals")))")
                
                
            } else {
                
                defaults.set(currentPage, forKey: "userCountFundamentals")
                
                
            }
            
            
        }
        
        
        if let isFinishedValue = defaults.object(forKey: "isFinishedFundamentals"){
            
            if isFinishedValue as! Bool == true {
                
                defaults.set(6, forKey: "userCountFundamentals")
                return page_six_coveringBasicsArray
            }
            
        }
        
        
        
        
        
        
        
        
        
        switch defaults.object(forKey: "userCountFundamentals") as! Int {
        case 1:
            return page_one_coveringBasicsArray
            
        case 2:
            return page_two_coveringBasicsArray
            
        case 3:
            
            return page_three_coveringBasicsArray
            
        case 4:
            
            return page_four_coveringBasicsArray
            
        case 5:
            
            return page_five_coveringBasicsArray
            
        case 6:
            
            return page_six_coveringBasicsArray
            
            
        default:
            
            return nil
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
}

