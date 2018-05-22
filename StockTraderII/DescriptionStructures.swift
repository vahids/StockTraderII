//
//  DescriptionStructures.swift
//  StockTraderII
//
//  Created by Francisco on 22/05/2018.
//  Copyright © 2018 Francisco Ruiz. All rights reserved.
//

import Foundation
import UIKit


//Covering Basics

let level_one_whyInvestInTheStockMarket_desc_oneHTML = """
<font size = "7" ><b>The stock market is one of the best ways you can build up wealth</b></font>
<font size = "5" > The stock market is one of the best ways you can build up wealth. The stock market is one of the best ways you can build up wealthThe stock market is one of the best ways you can build up wealthThe stock market is one of the best ways you can build up wealthThe stock market is one of the best ways you can build up wealth </font>

"""

let level_one_whyInvestInTheStockMarket_desc_twoHTML = """
<font size = "7" ><b>The stock market is one of the best ways you can build up wealth</b></font>
<font size = "5" > The stock market is one of the best ways you can build up wealth. The stock market is one of the best ways you can build up wealthThe stock market is one of the best ways you can build up wealthThe stock market is one of the best ways you can build up wealthThe stock market is one of the best ways you can build up wealth </font>

"""

// Fundamentals


let Fundamentals_page1_FundamentalsDefinition_desc_oneHTML = """
<font size = "7" ><b>Fundamentals are very important</b></font>
<font size = "5" > Fundamentals are very important you know?Fundamentals are very important you know?Fundamentals are very important you know?Fundamentals are very important you know?Fundamentals are very important you know?Fundamentals are very important you know?Fundamentals are very important you know? </font>

"""

let Fundamentals_page1_FundamentalsDefinition_desc_twoHTML = """
<font size = "7" ><b>Fundamentals are the best</b></font>
<font size = "5" > Fundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the bestFundamentals are the best </font>

"""

struct CoveringBasics {
    
    let level_one_whyInvestInTheStockMarket_title = "Learn to Invest"
    
    let level_one_whyInvestInTheStockMarket_desc_oneHTMLAttributed = try! NSAttributedString(data: level_one_whyInvestInTheStockMarket_desc_oneHTML.data(using: .utf8)!, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
    
    let level_one_whyInvestInTheStockMarket_desc_twoHTMLAttributed = try! NSAttributedString(data: level_one_whyInvestInTheStockMarket_desc_twoHTML.data(using: .utf8)!, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
    
    
    
}


struct Fundamentals{
    
    let Fundamentals_page1_FundamentalsDefinition_title = "Fundamentals"
    
    let Fundamentals_page1_FundamentalsDefinition_desc_oneHTMLAttributed = try! NSAttributedString(data: Fundamentals_page1_FundamentalsDefinition_desc_oneHTML.data(using: .utf8)!, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
    
    let Fundamentals_page1_FundamentalsDefinition_desc_twoHTMLAttributed = try! NSAttributedString(data: Fundamentals_page1_FundamentalsDefinition_desc_twoHTML.data(using: .utf8)!, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
    
    
    
    
    
    
    
    
}


