//
//  ContentView.swift
//  athkar
//
//  Created by Dhai AlSaho on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    @State var number2 = 0
    @State var number3 = 0
    var body: some View {
        ZStack{
            
           
            
        VStack {
            Image("calc")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            
            
            HStack{
                circleblue(count: $number)
                Text("count for duaa 1")
            }
            HStack{
                circleblue(count: $number2)
                Text("count for duaa 2")
            }
            HStack{
                circleblue(count: $number3)
                Text("count for duaa 3")
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


struct circleblue: View {
    @Binding var count : Int
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.black)
                .frame(width: 100, height:100)
            Text("\(count)")
                .foregroundColor(.white)
        }
        .onTapGesture {
            count = count+1
        }
    }
}
