//
//  ContentView.swift
//  CounterSwiftUI
//
//  Created by StudentPM on 2/24/25.
//

import SwiftUI

struct ContentView: View {
    //This stores the number for the counter
    @State var counter: Int = 0
    
    //This contains all the code displaying everything you see on the screen
    var body: some View {
        //VStack is used to display the text and counter vertically
        VStack {
            Text("Click buttons below to change the counter")
            Text("")
            Text("\(counter)")
        }
        //HStack is used to display the buttons horizontally
        HStack {
            //When this button is clicked, it will run the increment function
            Button(action: {increment()}, label: {
                Text("Increment")
                //all this below styles the increment button
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(6.0)
            })
            //When this button is clicked, it will run the decrement function
            Button(action: {decrement()}, label: {
                Text("Decrement")
                //all this below styles the decrement button
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(6.0)
            })
        }
        .padding()
    }
    //This function is meant to increase the counter by 1
    func increment(){
        //this adds 1 to the counter variable
        counter += 1
        
        // if the value of the counter is greater than 50, it will subtract by 1, so it limits the counter only up to 50
        if counter > 50 {
            //this subtracts 1 from the counter variable
            counter -= 1
        }
    }
    //This function is meant to decrease the counter by 1
    func decrement(){
        //this subtracts 1 from the counter variable
        counter -= 1
        
        //if the value of the counter is less than 0, it will add by 1, so it limits the counter to going down lowest to 0
        if counter < 0 {
            //this adds 1 to the counter variable
            counter += 1
        }
    }
}

#Preview {
    ContentView()
}
