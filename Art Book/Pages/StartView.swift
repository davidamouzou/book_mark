import SwiftUI

struct StartView: View {
    @State private var navigateToContentView = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                Image("slade")
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    Image("avatar")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
                    
                    // Text
                    VStack(spacing: 0) {
                        Text("ART BOOK")
                            .bold()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .padding(.top, 24)
                        Text("Trouver les meilleurs images d’art avec l’histoire qui se cache dèrière leurs creation")
                            .multilineTextAlignment(.center)
                            .padding(.all, 24)
                    }
                    .background(.gray.opacity(0.2))
                    .clipShape(CustomShape())
                    
                    Spacer()
                    
                    // Login button
                    Button(action: {navigateToContentView = true}) {
                        Text("Start to read")
                            .padding(24)
                            .frame(maxWidth: .infinity)
                            .background(.bookprimary)
                            .foregroundStyle(.booktext)
                            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 16, height: 10)))
                    }
                    .navigationDestination(isPresented:$navigateToContentView){
                        ContentView()
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 164)
            }
        }
    }
    
}

#Preview {
    StartView()
}

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.width
        let height = rect.height
        let radius: CGFloat = 20
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: width, y: height - radius))
        path.addArc(center: CGPoint(x: width - radius, y: height - radius), radius: radius, startAngle: .zero, endAngle: .degrees(90), clockwise: false)
        path.addLine(to: CGPoint(x: radius, y: height))
        path.addArc(center: CGPoint(x: radius, y: height - radius), radius: radius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)
        path.addLine(to: CGPoint(x: 0, y: 0))
        return path
    }
}

