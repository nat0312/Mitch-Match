//
//  OnBoarding1View.swift
//  Mitch-Match
//
//  Created by Natalia on 27/07/22.
//

import SwiftUI

struct OnBoarding1View: View {
    
    @State var showOnBoarding2View = false
    @State var showOnBoarding3View = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("BackgroundImg")
                
                VStack{
                    Spacer()
                        .frame(height: 40)
                    Image("IllustrationOnboarding1")
                    Spacer()
                        .frame(height: 60)
                    
                    Text("Take Quiz")
                        .fontWeight(.semibold)
                        .font(.system(size: 32))
                    Spacer()
                        .frame(height: 20)
                    
                    Text("We make a simple quiz for you to easily learn color theory. Complete all the quiz to master basic color theory.")
                        .fontWeight(.medium)
                        .font(.system(size: 18))
                        .multilineTextAlignment(.center)
                        .padding(.trailing, 40)
                        .padding(.leading, 40)
                    Spacer()
                        .frame(height: 130)
                    
                    HStack{
                        Button(action: { showOnBoarding3View = true }){
                            Text("Skip")
                                .font(.system(size: 20, weight: .medium))
                        }
                        NavigationLink("", destination:  OnBoarding3View()
                            .navigationBarBackButtonHidden(true), isActive: $showOnBoarding3View)
                        
                        Spacer()
                            .frame(width: 190)
                        
                        Button(action: { showOnBoarding2View = true }){
                            Text("Next >")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.orange)
                        }
                        NavigationLink("", destination:  OnBoarding2View()
                            .navigationBarBackButtonHidden(true), isActive: $showOnBoarding2View)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct OnBoarding1View_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding1View()
    }
}
