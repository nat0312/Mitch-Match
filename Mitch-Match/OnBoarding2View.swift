//
//  OnBoarding2View.swift
//  Mitch-Match
//
//  Created by Natalia on 27/07/22.
//

import SwiftUI

struct OnBoarding2View: View {
    
    @State var showOnBoarding3View = false
    
    var body: some View {
        ZStack{
            Image("BackgroundImg")
            
            VStack{
                Spacer()
                    .frame(height: 20)
                Image("IllustrationOnboarding2")
                Spacer()
                    .frame(height: 40)
                
                Text("Color Palette")
                    .fontWeight(.semibold)
                    .font(.system(size: 32))
                Spacer()
                    .frame(height: 20)
                
                Text("Every color have special meaning. Choose the best color combination for your design.")
                    .fontWeight(.medium)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                Spacer()
                    .frame(height: 100)
                
                HStack{
                    Button(action: { showOnBoarding3View = true }){
                        Text("Skip")
                            .font(.system(size: 20, weight: .medium))
                    }
                    NavigationLink("", destination:  OnBoarding3View(), isActive: $showOnBoarding3View)
                    
                    Spacer()
                        .frame(width: 190)
                    
                    Button(action: { showOnBoarding3View = true }){
                        Text("Next >")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.orange)
                    }
                    NavigationLink("", destination:  OnBoarding3View()
                        .navigationBarBackButtonHidden(true), isActive: $showOnBoarding3View)
                    
                }
                Spacer()
            }
        }
    }
}

struct OnBoarding2View_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding2View()
    }
}
