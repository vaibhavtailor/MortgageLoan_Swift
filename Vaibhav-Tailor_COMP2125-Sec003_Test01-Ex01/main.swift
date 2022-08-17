//
//  main.swift
//  Vaibhav-Tailor_COMP2125-Sec003_Test01-Ex01
//

import Foundation

//Creating function call
func Test(mortgage: MortgageLoan) -> String {
    return mortgage.Display
}

//Creating examples
let mortgage1 = MortgageLoan(loanNumber: 225578, customerName: "Harry White", loanAmount: 150000, mortgageRate: 2.7, timeDuration: 18)
let mortgage2 = MortgageLoan(loanNumber: 226848, customerName: "Jack Derek", loanAmount: 110000, mortgageRate: 3.8, timeDuration: 21)

//Printing output
print(Test(mortgage: mortgage1))
print(Test(mortgage: mortgage2))
print("\n----------------")//to differentiate between tasks

var abc = CalculateMonthlyPayment(mortgage: mortgage1)
var def = CalculateMonthlyPayment(mortgage: mortgage2)
print("The monthly payment for Harry is \(abc)")
print("The monthly payment for Jack is \(def)")
print("\n----------------")//to differentiate between tasks

//Testing convenience initializer
//Creating a function
func testConvenience(_ header: String, _ mortgage: MortgageLoan) {
    print(String(format:"%@\n   %@\n ",
                 header, mortgage.Display))
}

//Defining loan
let ml = MortgageLoan()
let ml1 = MortgageLoan(loanNumber: 548798, customerName: "Joseph Baker", loanAmount: 120000)

//Printing loan
testConvenience("\nMortgage loan with all default arguments: ", ml)
testConvenience("Mortgage loan with loan number, customer name and loan amount: ", ml1)
print("**-------**---------**")//End of all tasks

