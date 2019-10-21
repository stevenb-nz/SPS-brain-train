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
            Section {
                HStack {
                    Text(shouldWin ? "Win against " : "Lose against ")
                    Text(moves[currentChoice])
                }
            }
            Section {
                HStack {
                    ForEach(0 ..< moves.count) {move in
                        Button(action: {
                            if (self.shouldWin && (self.currentChoice == (move < 2 ? move+1 : 0))) || (!self.shouldWin && (self.currentChoice == (move > 0 ? move-1 : 2))) {
                                print("correct")
                            }
                            self.currentChoice = Int.random(in: 0...2)
                            self.shouldWin = Bool.random()
                        }) {
                            Text(self.moves[move])
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
