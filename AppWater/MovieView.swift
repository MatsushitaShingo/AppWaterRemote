//
//  MovieView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI

struct MovieView: View {
    
    @State private var isShowingView: Bool = false

    var body: some View {
        if isShowingView {
                        Visualization()
                    } else {
                        Button {
                            isShowingView.toggle()
                        } label: {
                            Text("フラグ")
                        }
                    }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
