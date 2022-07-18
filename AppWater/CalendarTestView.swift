//
//  CalendarTestView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/22.
//

import SwiftUI
import FSCalendar

struct CalendarTestView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        
        typealias UIViewType = FSCalendar
        
        let fsCalendar = FSCalendar()
            
        return fsCalendar
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}


struct CalendarTestView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarTestView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
