//
//  CrewData.swift
//  Moonshot
//
//  Created by Mac User on 27/09/2023.
//

import Foundation

class CrewData: ObservableObject {
    @Published var mission: Mission
    @Published var crew: [CrewMember]
    
    
    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission
        
        self.crew = mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }
}
