//
//  ContentView.swift
//  SPS brain train
//
//  Created by Steven Brown on 18/10/19.
//  Copyright © 2019 Steven Brown. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var currentChoice = Int.random(in: 0...2)
    @State private var shouldWin = Bool.random()
    
    let moves = ["Scissors", "Paper", "Stone"]
    
    var body: some View {
        VStack {
            Text(shouldWin ? "Win against" : "Lose against")
            Text(moves[currentChoice])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
