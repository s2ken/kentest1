//
//  Shapes.swift
//  Bullseye
//
//  Created by Ken Chu on 2022/09/25.
//. Added test 1 and change it again. And again

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    
    var body: some View {
        VStack {
            if !wideShapes {
                Circle()
                //.fill(Color.blue)
                //.inset(by: 10)
                //.stroke(Color.red, lineWidth: 20)
                    .strokeBorder(Color.blue, lineWidth: 20)
                    .frame(width: 200, height: 100)
                    .transition(.scale)
            }
                RoundedRectangle(cornerRadius: 20.0)
                    .strokeBorder(Color.blue, lineWidth: 20)
                    .frame(width: wideShapes ? 200 : 100, height: 100)
                Capsule()
                    .strokeBorder(Color.blue, lineWidth: 20)
                    .frame(width: wideShapes ? 200 : 100, height: 100)
                Ellipse()
                    .strokeBorder(Color.blue, lineWidth: 20)
                    .frame(width: wideShapes ? 200 : 100, height: 100)
                Button(action: {
                    withAnimation {
                        wideShapes.toggle()
                    }
                    
                })
                {
                    Text("Animate!")
                }
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
