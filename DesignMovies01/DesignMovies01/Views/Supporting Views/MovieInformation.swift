import SwiftUI

struct MovieInformation: View {
    
    let genres = ["Action/Adventure", "SCI-FI", "Drama", "Thriller"]
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0){
                    HeaderView()
                    VStack(alignment: .leading, spacing: 0){
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text("LOGAN")
                                    .custom(font: .bold, size: 40)
                                HStack(spacing: 20) {
                                    Text("2019")
                                    Text("PG-13")
                                    Text("2 HR 17 min")
                                    
                                }
                                .custom(font: .medium, size: 15)
                                .padding(.bottom, 9)
                            }
                            Spacer()
                            HStack(spacing: 20) {
                                HStack(spacing: 7) {
                                    Image("icon-rotten-tomato")
                                        .resizable()
                                        .frame(width: 22, height: 23)
                                    Text("96%")
                                    
                                }
                                HStack(spacing: 7) {
                                    
                                    Image("icon-popcorn")
                                        .resizable()
                                        .frame(width: 17, height: 23)
                                    Text("79%")
                                    
                                }
                            }
                        }
                        
                        HStack(spacing: 10) {
                            
                            ForEach(genres, id: \.self) { genre in
                                
                                VStack{
                                    Text("\(genre)")
                                        .foregroundColor(Color.baseAccent)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 8)
                                }
                                .background(RoundedRectangle(cornerRadius: 16.5)
                                    .strokeBorder(Color.baseSecondaryBackground ,lineWidth: 2)
                                    .frame(height: 26))
                                .padding(.top, 14)
                                
                            }
                        }
                        .custom(font: .bold, size: 12)
                        
                        ShowtimeView()                                       .padding(.top, 20)
                    }
                    .padding(.bottom, 30)
                    
                    TimeSlotPickerView()
                }
                
            }
            
        }
    }
}

struct Movies_Previews: PreviewProvider {
    static var previews: some View {
        MovieInformation()
            .preferredColorScheme(.dark)
        
    }
}
