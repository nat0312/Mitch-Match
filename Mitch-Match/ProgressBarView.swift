//
//  ProgressBarView.swift
//  Mitch-Match
//
//  Created by Natalia on 28/07/22.
//

import SwiftUI

struct ProgressBarView: View {
    
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.5)
                    .foregroundColor(Color(UIColor.lightGray))
                
                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(UIColor.orange))
                    .animation(.linear)
            }.cornerRadius(25)
        }
    }
}

//struct ProgressBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProgressBarView()
//    }
//}
