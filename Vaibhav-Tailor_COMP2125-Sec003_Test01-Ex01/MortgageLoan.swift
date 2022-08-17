//
//  MortgageLoan.swift
//  Vaibhav-Tailor_COMP2125-Sec003_Test01-Ex01
//

import Foundation

//Creating class MortgageLoan
public class MortgageLoan {
    
    //Defining stored property
    public var loanNumber: Int = 0
    
    //Defining private set customer name
    public private(set) var customerName: String = ""
    
    //Defining loan amount as stored property
    //And setting it not negative
    public var loanAmount: Double = 0.0  {
        didSet{
            if loanAmount < 0 {
                print("The loan amount cannot be negative.")
                loanAmount = oldValue
            }
        }
    }
    
    //Defining yearly property tax as computed property
    public var yearlyPropertyTax: Double {
        return (loanAmount * 1)/100
    }
    
    //Defining mortgage rate as stored property
    //And setting it positive between 2 and 5
    public var mortgageRate: Double  = 2.0 {
        didSet{
            if mortgageRate < 2.0 || mortgageRate > 5.0 {
               print("The mortgage rate should be between 2.0 and 5.0.")
                mortgageRate = oldValue
            }
        }
        
    }
    
    //Defining time duration as stored property
    //And setting it between 15 to 25 years
    public var timeDuration: Int = 15 {
        didSet{
            if timeDuration < 15 || timeDuration > 25 {
                print("The time duration must be between 15 and 25 years.")
                timeDuration = oldValue
            }
        }
    }
    
    //Defining display as computed property
    //Which will display all values
    public var Display: String {
        return String(format: "\nLoan Number: %d, \nCustomer Name: %@, \nLoan Amount: %.2f, \nYearly Property Tax: %.2f, \nMortgage Rate: %.2f, \nTime Duration: %d", loanNumber, customerName, loanAmount, yearlyPropertyTax, mortgageRate, timeDuration)
    }
    
    
    //Adding a deinitializer
    deinit{}
    
    //Defining designated initializers
    //With appropriate values choosen by user
    public init(loanNumber: Int, customerName: String, loanAmount: Double, mortgageRate: Double, timeDuration: Int) {
        self.loanNumber = loanNumber
        self.customerName = customerName
        self.loanAmount = loanAmount
        self.mortgageRate = mortgageRate
        self.timeDuration = timeDuration
        
    }
    
    //Defining designated initializers
    //With all properties to their default values
    public init() { }
    
}






