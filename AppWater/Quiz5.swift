//
//  Quiz5.swift
//  AppWater
//
//  Created by 田中翔大 on 2022/04/07.
//

import SwiftUI

class EnvironmentData: ObservableObject {
    @Published var isNavigationActive: Binding<Bool> = Binding<Bool>.constant(false)
}

struct ModalView5: View {
    @Environment(\.presentationMode)var PresentationMode
    var body: some View {
        NavigationView{
            NavigationLink(destination: Quiz5()){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.green)
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

struct Quiz5: View {

    @State private var isActive = false
        
        var body: some View {
                NavigationLink(destination: SecondView(isFirstViewActive: $isActive), isActive: $isActive) {
                    Button(action: {
                        self.isActive = true
                    }, label: {
                        Text("Forward to Second View.")
                    })
                }
                .navigationViewStyle(.stack)
                .navigationBarTitle("First View")

        }
    
}

struct SecondView: View {
    
    @State private var isActive = false
    @Binding var isFirstViewActive: Bool
    
    var body: some View {
        NavigationLink(destination: ThirdView(isFirstViewActive: $isFirstViewActive), isActive: $isActive) {
            Button(action: {
                self.isActive = true
            }, label: {
                Text("Forward to Third View.")
            })
        }
        .isDetailLink(false)
        .navigationBarTitle("Second View")
    }
}

struct ThirdView: View {
    
    @Binding var isFirstViewActive: Bool
    
    var body: some View {
        Button(action: {
            self.isFirstViewActive = false
        }, label: {
            Text("Back to First View.")
        })
        .navigationBarTitle("Third View")
    }
}


struct Quiz5_Previews: PreviewProvider {
    static var previews: some View {
        Quiz5()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
