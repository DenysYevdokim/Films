//
//  accountView.swift
//  Films
//
//  Created by PRO on 19.06.2026.
//


import SwiftUI

struct AccountView: View {
    var body: some View {
        ZStack {
            (Color(red: 0.08, green: 0.10, blue: 0.17))
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {

                  
                    // Card
                    VStack(alignment: .leading, spacing: 25) {

                        Text("Account")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)

                    //ProfileRow()

//                        Фstruct ProfileRow: View {
//                            var body: some View {
//                                HStack {
//
//                                    Image(systemName: "person.crop.circle.fill")
//                                        .resizable()
//                                        .frame(width: 55, height: 55)
//                                        .foregroundColor(.gray)
//
//                                    VStack(alignment: .leading) {
//
//                                        Text("Miles Morales")
//                                            .foregroundColor(.white)
//                                            .font(.title3.bold())
//
//                                        Text("Film Hunter")
//                                            .foregroundColor(.gray)
//                                    }
//
//                                    Spacer()
//
//                                    Image(systemName: "chevron.right")
//                                        .foregroundColor(.white)
//                                }
//                            }
//                        }

                       
                        
                        
                        
                        
                        Divider()
                            .background(.gray)

                        Text("Account")
                            .font(.headline)
                            .foregroundColor(.white)

                        MenuRow(
                            icon: "person.crop.circle.fill",
                            color: .indigo,
                            title: "Personal Data"
                        )

                        MenuRow(
                            icon: "envelope.fill",
                            color: .cyan,
                            title: "Email & Payment"
                        )

                        MenuRow(
                            icon: "trash.fill",
                            color: .red,
                            title: "Deactivate Account"
                        )

                        Divider()
                            .background(.gray)

                        Text("Privacy & Policy")
                            .font(.headline)
                            .foregroundColor(.white)

                        MenuRow(
                            icon: "bell.fill",
                            color: .indigo,
                            title: "Notification"
                        )

                        MenuRow(
                            icon: "ticket.fill",
                            color: .cyan,
                            title: "Your Ticket"
                        )

                        MenuRow(
                            icon: "rectangle.portrait.and.arrow.right.fill",
                            color: .red,
                            title: "Logout"
                        )
                    }
                    .padding(20)
                    //  .background(Color(red: 0.08, green: 0.10, blue: 0.17))
                    .cornerRadius(24)
                    .padding()
                }
            }
        }
    }
}
