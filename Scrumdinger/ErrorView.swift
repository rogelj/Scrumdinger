//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by J Rogel  on 05/01/2023.
//

import SwiftUI

struct ErrorView: View {
    let errorwrapper: ErrorWrapper
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationView {
            VStack {
                Text("An error has occurred!")
                    .font(.title)
                    .padding(.bottom)
                Text(errorwrapper.error.localizedDescription)
                    .font(.headline)
                Text(errorwrapper.guidance)
                    .font(.caption)
                    .padding(.top)
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
            }
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    enum SampleError: Error {
        case errorRequired
    }

    static var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired, guidance: "You can safely ignore this error.")
    }
    static var previews: some View {
        ErrorView(errorwrapper: wrapper)
    }
}
