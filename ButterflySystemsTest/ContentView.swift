//
//  ContentView.swift
//  ButterflySystemsTest
//
//  Created by Regan Russell on 12/2/20.
//  Copyright © 2020 Regan Russell. All rights reserved.
//

import SwiftUI


struct ContentView: View {
        
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var operand = ""
    @State private var calculatorText = "0"
    @State private var isTypingNumber = false
    
    var body: some View {
        VStack(spacing: 30) {

            TextField("0", text: $calculatorText)
                  .border(Color.gray, width: 2)
                  .padding()
                  .multilineTextAlignment(.trailing)
                .foregroundColor(Color.white)

              HStack {
                  createCalcDigit("1")
                .padding()
                    .border(Color.gray, width: 2)
                  Spacer()
                  createCalcDigit("2")
                .padding()
                .border(Color.gray, width: 2)
                  Spacer()
                  createCalcDigit("3").padding()
                  .border(Color.gray, width: 2)
              }.padding()

              HStack {
                  createCalcDigit("4").padding()
                  .border(Color.gray, width: 2)
                  Spacer()
                  createCalcDigit("5").padding()
                  .border(Color.gray, width: 2)
                  Spacer()
                  createCalcDigit("6").padding()
                  .border(Color.gray, width: 2)
              }.padding()

              HStack {
                  createCalcDigit("7").padding()
                  .border(Color.gray, width: 2)
                  Spacer()
                  createCalcDigit("8").padding()
                  .border(Color.gray, width: 2)
                  Spacer()
                  createCalcDigit("9").padding()
                  .border(Color.gray, width: 2)
              }.padding()

              HStack {

                Button(action: {
                      self.operandTapped("-")
                  }) {
                      (Text("-"))
                  }
                  Spacer()
                  createCalcDigit("0").padding()
                  .border(Color.gray, width: 2)
                  Spacer()
                  Button(action: {
                      self.operandTapped("+")
                  }) {
                      (Text("+"))
                  }

              }.padding()

              HStack {
                Button(action: {
                                 self.operandTapped("*")
                             }) {
                                 (Text("*"))
                             }
                  Spacer()

                Button(action: {
                      self.calculate()
                  }) {
                      (Text("="))
                  }
                  Spacer()
                
                  Button(action: {
                                   self.operandTapped("/")
                               }) {
                                   (Text("/"))
                               }

              }.padding()
          }
          .font(.largeTitle)
          .background(Color.black)
          .foregroundColor(Color.white)
    }
    
    private func createCalcDigit(_ number: String) -> Button<Text> {
        return Button(action: {
            self.digitTapped(number)
        }) {
            (Text(number))
            
        }
         
    }


    private func digitTapped(_ number: String) -> Void {
        if isTypingNumber {
            calculatorText += number
        } else {
            calculatorText = number
            isTypingNumber = true
        }
    }


    private func operandTapped(_ operand: String) {
        isTypingNumber = false
        firstNumber = Int(calculatorText)!
        self.operand = operand
        calculatorText = operand
    }


    private func calculate() {
        isTypingNumber = false
        var result  = 0

        let fetched = Int(calculatorText)
        if fetched != nil {
            secondNumber = fetched!
        }
        else {
            secondNumber = 0
        }

        // Should not throw, no need for guard or do/try/catch
        result = CalculatorViewModel.calculate(firstNumber: firstNumber, secondNumber: secondNumber, operand: operand)
        
        calculatorText = "\(result)"
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
