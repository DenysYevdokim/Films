//
//  Profile.swift
//  Films
//
//  Created by PRO on 19.06.2026.
//

import SwiftUI

struct ProfileRow: View {
    var body: some View {
        HStack {
            
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 55, height: 55)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading) {
                
                Text("Denys Yevdokymenko")
                    .foregroundColor(.blue)
                    .font(.title3.bold())
                
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.black)
        }
        
        .background (Color(red: 0.08, green: 0.10, blue: 0.17))
        
    }
}
#Preview {
    ProfileRow()
}
