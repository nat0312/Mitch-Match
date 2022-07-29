//
//  Quiz_ChooseLevel_View.swift
//  Mitch-Match
//
//  Created by Natalia on 26/07/22.
//

import SwiftUI

struct QuizChooseLevelView: View {
    var body: some View {
            ZStack{
                Image("BackgroundImg")
                
                VStack {
                    Text("Choose Level")
                    
                    
                    HStack{
                        Text("Level 1")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        
                        Text("Level 2")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    
                    HStack{
                        Text("Level 3")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        
                        Text("Level 4")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    
                    HStack{
                        Text("Level 5")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        
                        Text("Level 6")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    
                    HStack{
                        Text("Level 7")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        
                        Text("Level 8")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    
                    HStack{
                        Text("Level 9")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        
                        Text("Level 10")
                            .frame(width: 159, height: 53)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    
                    Text("Coming Soon")
                }
            
        }
        .navigationTitle("Level")
    }
    
    struct QuizChooseLevelViewPreviews: PreviewProvider {
        static var previews: some View {
            QuizChooseLevelView()
        }
    }
}
