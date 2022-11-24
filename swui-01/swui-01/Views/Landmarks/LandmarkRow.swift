//
//  LandmarkRow.swift
//  swui-01
//
//  Created by bap on 14/11/2022.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark: LandMark
    
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50,
                       height:50)
            Text(landMark.name)
            Spacer()
            if landMark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landMark: ModelData().landmarks[0])
    }
}
