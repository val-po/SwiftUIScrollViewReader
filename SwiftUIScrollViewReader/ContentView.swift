//
//  ContentView.swift
//  SwiftUIScrollViewReader
//
//  Created by valentine on 03.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollViewReader { scroolView in
                ScrollView {
                    VStack(alignment: .leading) {
                        Button(action: {
                            withAnimation {
                                scroolView.scrollTo(100,
                                                    anchor: .center)
                            }
                        }, label: {
                            Text("Scroll to Bottom")
                        })
                        ForEach(0...100, id: \.self) { num in
                            HStack {
                                Label(
                                    title: { Text("Position: \(num)") },
                                    icon: { Image(systemName: "house") }
                                )
                                Spacer()
                            }
                            .id(num)
                            .padding()
                            }
                        }
                    }
                    .navigationTitle("Scroll View")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
