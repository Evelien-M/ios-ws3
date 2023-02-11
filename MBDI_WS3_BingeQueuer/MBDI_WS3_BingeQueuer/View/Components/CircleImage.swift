// From: https://developer.apple.com/tutorials/swiftui/
import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(
                    .white,
                    lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image(seriesSourceList[0].image)
                        .resizable()
        )
            .previewDevice("iPhone 13 Pro Max")
    }
}
