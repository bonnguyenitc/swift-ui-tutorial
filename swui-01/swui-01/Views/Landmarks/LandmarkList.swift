//
//  LandmarkList.swift
//  swui-01
//
//  Created by bap on 14/11/2022.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = true
    @EnvironmentObject var modelData: ModelData
    
    
    var filteredLandmarks: [LandMark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                ForEach (filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landMark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarkds")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkList()
            .environmentObject(modelData)
    }
}
