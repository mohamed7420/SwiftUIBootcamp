//
//  DataPickerBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 26/12/2023.
//

import SwiftUI

struct DataPickerBootcamp: View {
    @State private var selectedDate = Date()

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }

    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text(dateFormatter.string(from: selectedDate))
                    .font(.title)
                    .foregroundStyle(.white)
                DatePicker(selection: $selectedDate, displayedComponents: .date) {
                    Text("Date Picker")
                }.accentColor(.indigo)

            }
        }
    }
}

#Preview {
    DataPickerBootcamp()
}
