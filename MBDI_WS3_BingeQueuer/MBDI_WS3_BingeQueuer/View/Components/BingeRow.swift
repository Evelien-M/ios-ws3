//
//  BingeRow.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Evelien Manshanden on 08/02/2023.
//

import SwiftUI

struct BingeRow: View {
    var series: Series
    var body: some View {
        
        HStack {
            Image(series.image).resizable()
                .frame(width: 50, height: 50)
            Text(series.title)
        }
    }
}

struct BingeRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BingeRow(series: seriesSourceList[1])
            BingeRow(series: seriesSourceList[2])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}

