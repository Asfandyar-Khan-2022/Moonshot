//
//  MissionView.swift
//  Moonshot
//
//  Created by Mac User on 26/09/2023.
//

import SwiftUI

struct MissionView: View {
    @StateObject var crewData: CrewData
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image(crewData.mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding(.top)
                    
                    
                    VStack(alignment: .leading) {
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(.lightBackground)
                            .padding(.vertical)
                        
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        
                        Text(crewData.mission.description)
                        
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(.lightBackground)
                            .padding(.vertical)
                        
                        Text("Crew")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                    }
                    .padding(.horizontal)
                    
                    MissionViewAstronauts(crewData: crewData)
                    
                }
                .padding(.bottom)
            }
            .navigationTitle(crewData.mission.displayName)
            .navigationBarTitleDisplayMode(.inline)
            .background(.darkBackground)
        }
    }
}

//struct MissionView_Previews: PreviewProvider {
//    static var previews: some View {
//        MissionView(crewData: CrewData())
//            .preferredColorScheme(.dark)
//    }
//}
