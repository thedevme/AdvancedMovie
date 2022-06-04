import SwiftUI

struct FormatView: View {
    let columns = [
        GridItem(.fixed(90), spacing: 10),
        GridItem(.fixed(90), spacing: 10),
        GridItem(.fixed(90), spacing: 10),
        GridItem(.fixed(90), spacing: 10)
    ]
    
    var count = 0
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("STANDARD FORMAT")
                .custom(font: .demibold, size: 20)
                .foregroundColor(Color.baseAccent)
            Text("STANDARD FORMAT CC, DESCRIPTIVE VIDEO, RESERVED SEATING")
                .custom(font: .regular, size: 14)
                .padding(.bottom, 10)
            
            LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                ForEach(0..<count, id: \.self) { item in
                    TimeSlotView()
                }
            }
        }
    }
}

struct FormatView_Previews: PreviewProvider {
    static var previews: some View {
        FormatView()
    }
}
