//
//  ContentView.swift
//  cw3
//
//  Created by Dhai AlSaho on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var result = ""
    @State var grade = ""
    
    
    var body: some View {
        
        ZStack{
            
            VStack{
                Text("numb calc")
                    .padding()
                    .foregroundColor(.blue)
                Image("calc")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                TextField("grade u got", text: $result)
                    // use for if
                
                HStack{
                Text("click")
                        .background(.blue)
                        .foregroundColor(.white)
                    .onTapGesture {
                        var cll = Double(result) ?? 0
                        
                        if (cll >= 80)
                        {
                          let wow = "wow"
                               
                            grade = wow}
                        else if (cll >= 70){
                                let good = "good"
                                         
                                grade = good}
                        
                        else if (cll >= 60){
                            let ok = "ok"
                            
                            grade = ok}
                        
                        else if (cll < 60){
                            let bad = "failed"
                            
                            grade = bad}
                        
                    }
                }
                .padding()
                Text(grade)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
            
        }
        
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
