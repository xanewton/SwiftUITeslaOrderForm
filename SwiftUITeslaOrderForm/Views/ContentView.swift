//
//  ContentView.swift
//  SwiftUITeslaOrderForm
//
//  Created by newtan on 2021-02-18.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var order:OrderViewModel

    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(.vertical) {
                    VStack(spacing: 0) {
                        CarDetailView()
                            .frame(height: 600)
                        FormView()
                            .environmentObject(order)
                            .frame(height: 450)
                        completeButton
                    }
                    .padding(.top, 40)
                }
                .hideNavigationBar()
            }
            
            CompleteOrderView()
                .environmentObject(order)
                .opacity(order.isOrderCompleteVisible ? 1 : 0)
                .animation(.default)
        }
    }

    var completeButton: some View {
        Button(action: {
            self.order.isOrderCompleteVisible.toggle()
            self.order.sendOrder()
        }) {
            Text("COMPLETE ORDER")
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 60)
        }
        .custom(font: .bold, size: 28)
        .frame(height: 60)
        .foregroundColor(.white)
        .background(Color.baseGreen)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(OrderViewModel())
    }
}
