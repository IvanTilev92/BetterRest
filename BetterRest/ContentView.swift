//
//  ContentView.swift
//  BetterRest
//
//  Created by Ivan Tilev on 3.10.23.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 0.8
    @State private var coffeeAmount = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("When do you want to get up?")
                    .font(.headline)
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.2)
                
                Text("Daily coffee intate")
                    .font(.headline)
                Stepper(coffeeAmount == 1 ? "1 cup": "\(coffeeAmount) cups", value: $coffeeAmount, in: 1...20)
            }
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate", action: calculateBedTime)
            }
        }
    }
    
    func calculateBedTime() {
        // Code here
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
