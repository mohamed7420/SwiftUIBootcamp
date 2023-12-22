//
//  ActionSheetBootcamp.swift
//  SwiftUIExamples
//
//  Created by Mohamed Osama on 22/12/2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State private var showActionSheet: Bool = false

    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()

            Button(action: {
                showActionSheet.toggle()
            }, label: {
                Text("Show Action Sheet")
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
            .actionSheet(isPresented: $showActionSheet, content: {
                createActionSheet()
            })
        }
    }

    private func createActionSheet() -> ActionSheet {
        let shareButton = ActionSheet.Button.default(Text("Share"))
        let deleteButton = ActionSheet.Button.destructive(Text("Delete"))
        let cancelButton = ActionSheet.Button.cancel()

        return ActionSheet(title: Text("Title Of Action Sheet"),
                    message: Text("Message Of Action Sheet"),
                    buttons: [shareButton, deleteButton, cancelButton])
    }
}

#Preview {
    ActionSheetBootcamp()
}
