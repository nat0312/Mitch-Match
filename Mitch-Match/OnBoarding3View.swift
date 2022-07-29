//
//  ContentView.swift
//  Mitch-Match
//
//  Created by Natalia on 26/07/22.
//

import SwiftUI

struct OnBoarding3View: View {
    
    @State var name: String = ""
    @State var showHomeView = false
    
    var body: some View {
        ZStack{
            Image("BackgroundImg")
            
            VStack{
                Spacer()
                    .frame(height: 0)
                Image("IllustrationOnboarding3")
                Spacer()
                    .frame(height: 40)
                
                Text("What should we call you?")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                Spacer()
                    .frame(height: 25)
                
                TextField("E.g. John Doe", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 50)
                    .background(Color.white)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                    .cornerRadius(20)
                Spacer()
                    .frame(height: 35)
                
                //                Button {
                //                    isPresenting = true
                //                } label: {
                //                    Text("Submit")
                //                        .frame(width: 159, height: 53)
                //                        .background(.orange)
                //                        .foregroundColor(.white)
                //                        .cornerRadius(15)
                //
                //                    NavigationLink(destination: QuizChooseLevelView()
                //                        .navigationBarBackButtonHidden(true), isActive: $isPresenting) {
                //                            EmptyView()
                //                        }
                //                }
                
                Button(action: { showHomeView = true }){
                    Text("Submit")
                        .frame(width: 159, height: 53)
                        .font(.system(size: 18, weight: .semibold))
                        .background(.orange)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
                NavigationLink("", destination:  HomeView()
                    .navigationBarBackButtonHidden(true), isActive: $showHomeView)
            }
        }
    }
    
    
    struct OnBoarding3View_Previews: PreviewProvider {
        static var previews: some View {
            OnBoarding3View()
        }
    }
}
