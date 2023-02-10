//
//  SeriesDetail.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Evelien Manshanden on 09/02/2023.
//

import SwiftUI
import CoreLocation

struct SeriesDetail: View {
    var series: Series
    var spacerSize: Double = 150
    var mapView: Double = 300
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: CLLocationCoordinate2DMake(series.latitude, series.longitude))
                    .frame(height: mapView)
                CircleImage(image: Image(series.image))
                    .offset(y: -spacerSize)
                    .padding(.bottom, -spacerSize)
                Text(series.title)
                Text("Season " + String(series.seasons))
                Divider()
                Text(series.description)
            }
        }.navigationTitle(series.title)
            .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct SeriesDetail_Previews: PreviewProvider {
    static var previews: some View {
        SeriesDetail(series: seriesSourceList[1])
    }
}
