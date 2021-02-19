//
//  CarInfoPhotosView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/13/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CarInfoPhotosView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Car Interior")
                .custom(font: .medium, size: 22)
                .foregroundColor(.baseDarkGray)
            HStack {
                Image("pic1")
                    .resizable()
                    .frame(width: 170, height: 94)
                    .cornerRadius(10)
                Image("pic2")
                    .resizable()
                    .frame(width: 170, height: 94)
                    .cornerRadius(10)
            }.frame(height: 94)
        }.padding(.top, 10)
    }
}

struct CarInfoPhotosView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoPhotosView()
            .previewLayout(.fixed(width: 400, height: 150))
    }
}
