//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by J Rogel  on 05/01/2023.
//

import SwiftUI

struct ErrorView: View {
    let errorwrapper: ErrorWrapper

    var body: some View {
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
