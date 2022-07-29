//
//  HomeView.swift
//  Mitch-Match
//
//  Created by Natalia on 27/07/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var progressValue: Float = 0.2
    @State var showQuizChooseLevelView = false
    @State var isNavigationBarHidden: Bool = true
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("BackgroundImg")
                    .navigationTitle("Home")
                
                
                VStack{
                    Spacer()
                        .frame(height: 0)
                    
                    Image("Profile")
                        .frame(minWidth: 98, maxWidth: 98, minHeight: 98, maxHeight: 98)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Anne Wills")
                        .font(.system(size: 22))
                        .fontWeight(.semibold)
                    
                    Spacer()
                        .frame(height: 25)
                    
                    ProgressBarView (value: $progressValue).frame(width: 320, height: 12)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("2 / 10 Question")
                        .frame(maxWidth: 300,
                               maxHeight: 30,
                               alignment: .trailing)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    
                    ZStack {
                        Spacer()
                            .frame(height: 230)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                            .frame(width: 330, height: 175, alignment: .center)
                            .shadow(color: .gray, radius: 4, x: 0, y: 3)
                        
                        VStack {
                            Text("Beginner")
                                .frame( alignment: .topLeading)
                                .font(.system(size: 20, weight: .semibold))
                            
                            Spacer()
                                .frame(height: 10)
                            
                            Text("You have done 2/10 Quiz, Keep Going!")
                                .frame(width: 290, height: 15, alignment: .topLeading)
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.gray)
                            
                            Spacer()
                                .frame(height: 25)
                            
                            Button(action: { showQuizChooseLevelView = true }){
                                Text("Start Quiz")
                                    .frame(width: 285, height: 45, alignment: .center)
                                    .font(.system(size: 18, weight: .bold))
                                    .background(.orange)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                            }
                            NavigationLink("", destination:  QuizChooseLevelView()
                                .navigationBarBackButtonHidden(true), isActive: $showQuizChooseLevelView)
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
