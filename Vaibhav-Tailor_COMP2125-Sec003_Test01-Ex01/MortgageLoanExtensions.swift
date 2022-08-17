//
//  MortgageLoanExtensions.swift
//  Vaibhav-Tailor_COMP2125-Sec003_Test01-Ex01
//

import Foundation

//Creating MortgageLoan extension class
extension MortgageLoan {
    
    //Defining convenience initializer
    //Which will provide values for loan number, customer name and loan amount
    public convenience init(loanNumber: Int, customerName: String, loanAmount: Double) {
        self.init(loanNumber: loanNumber, customerName: customerName, loanAmount: loanAmount, mortgageRate: 2.0, timeDuration: 15)
        
    }
    
        
}

func CalculateMonthlyPayment(mortgage: MortgageLoan) -> Double {
    
    let interest = (mortgage.loanAmount * mortgage.mortgageRate * Double(mortgage.timeDuration))/100
    
    let totalAmount = mortgage.loanAmount + interest + (mortgage.yearlyPropertyTax * Double(mortgage.timeDuration))
    
    let formula = Int(totalAmount) / (mortgage.timeDuration * 12)
    
    return Double(formula)
}
