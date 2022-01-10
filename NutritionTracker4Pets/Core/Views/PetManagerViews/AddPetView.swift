import SwiftUI

struct AddPetView: View {
    @StateObject var ppm = PetProfileManager()
    @Environment(\.presentationMode) var presentationMode
//    @State var changePic = false
//    @State var allowFromCamera = false
//    @State var picSelected = UIImage()
    @State private var name: String = ""
    @State private var color: String = ""
    @State private var type: String = ""
    @State private var dob: Date = Date()

    var body: some View {

        VStack {
            //                Button(action: {
            //                    changePic = true
            //                    allowFromCamera = true
            //                }, label: {
            //                    if changePic {
            //                        Image(uiImage: picSelected)
            //                            .resizable()
            //                            .frame(width: 150.0, height: 150.0)
            //                            .clipShape(Circle())
            //                            .shadow(radius: 8)
            //                    } else {
            //                        Image("cat_profile")
            //                            .resizable()
            //                            .frame(width: 150.0, height: 150.0)
            //                            .clipShape(Circle())
            //                            .shadow(radius: 8)
            //                    }
            //                })
            //                Image(systemName: "plus")
            //                    .frame(width: 35.0, height: 35.0)
            //                    .foregroundColor(.white)
            //                    .background(Color.black)
            //                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            //            }.sheet(isPresented: $allowFromCamera) {
            //                ImagePicker(sourceType: .photoLibrary)
            //            }
            Spacer()
                .frame(height: 50.0)
            ZStack(alignment: .bottomTrailing) {


            Spacer()
                .frame(height: 50.0)
            Form {
                TextField("Name", text: $name)
                TextField("Color", text: $color)
                TextField("Type", text: $type)
                DatePicker("Date of Birth", selection: $dob)
            }
            Button(action: {
                ppm.addPetProfile(name: name, color: color, type: type, dob: dob)
            }, label: {
                Text("Save")
                })
            }
        .navigationTitle("Add New Pet")
        }
    }
}

struct AddPetView_Previews: PreviewProvider {
    static var previews: some View {
        AddPetView()
    }
}

