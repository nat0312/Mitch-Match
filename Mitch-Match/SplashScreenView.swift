//
//  SplashScreenView.swift
//  Mitch-Match
//
//  Created by Natalia on 26/07/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        ZStack{
            Image("BackgroundImg")
            
            VStack{
                if self.isActive {
                    OnBoarding1View()
                } else {
                    Image("Logo")
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
