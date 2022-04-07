//
//  Quiz3.swift
//  AppWater
//
//  Created by 田中翔大 on 2022/04/07.
//

import SwiftUI

struct ModalView3: View {
    @Environment(\.presentationMode)var PresentationMode
    var body: some View {
        NavigationView{
            NavigationLink(destination: Quiz3()){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.blue)
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

struct Quiz3: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Quiz3_Previews: PreviewProvider {
    static var previews: some View {
        Quiz3()
    }
}
