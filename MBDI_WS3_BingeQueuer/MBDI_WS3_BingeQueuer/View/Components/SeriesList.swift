//
//  SeriesList.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Evelien Manshanden on 08/02/2023.
//

import SwiftUI

struct SeriesList: View {
    var body: some View {
        VStack {
            Text("Series")
            NavigationView {
                List (seriesSourceList) {
                    series in NavigationLink(destination : SeriesDetail(series: series)) {
                        BingeRow(series: series)
                    }
                }
                .toolbar {
                    EditButton()
                }
            }
        }
    }
}

struct SeriesList_Previews: PreviewProvider {
    static var previews: some View {
        SeriesList()
    }
}
