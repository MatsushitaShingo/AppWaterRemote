//
//  Quiz4.swift
//  AppWater
//
//  Created by 田中翔大 on 2022/04/07.
//

import SwiftUI

struct ModalView4: View {
    
    @State private var isActive = false
    @Environment(\.presentationMode)var PresentationMode
   
    var body: some View {
        NavigationView{
            NavigationLink(destination: Quiz4()){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.purple)
                    Text("START!")
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .navigationBarItems(trailing:Button(action:{self.PresentationMode.wrappedValue.dismiss()
                        })
                                            {
                            Text("close")
                        })
                    
                                            
                }

          }.navigationViewStyle(.stack)

        
      }
    }
}

struct Quiz4: View {    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Quiz4_Previews: PreviewProvider {
    static var previews: some View {
        Quiz4()
    }
}
