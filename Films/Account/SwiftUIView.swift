//
//  SwiftUIView.swift
//  Films
//
//  Created by PRO on 19.06.2026.
//
import SwiftUI

struct MenuRow: View {

    var icon: String
    var color: Color
    var title: String

    var body: some View {

        HStack(spacing: 15) {

            ZStack {

                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .frame(width: 48, height: 48)

                Image(systemName: icon)
                    .foregroundColor(.white)
            }

            Text(title)
                .foregroundColor(.white)
                .font(.title3)

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(.white)
        }
    }
}
