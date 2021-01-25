//
//  LocationDetail.swift
//  TrekrMultiPlatform
//
//  Created by James Wu on 2021-01-25.
//

import SwiftUI

struct LocationDetail: View {
    //The location to show details about
    //A copy of an instance of a structure will be provided in this view
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            HStack{
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
            }
            .padding(.horizontal)
            Text(location.description).padding(.horizontal)
            
            HStack {
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(location.more).padding([.horizontal, .bottom])
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationDetail(location: Location.example)
            
        }
      
    }
}
