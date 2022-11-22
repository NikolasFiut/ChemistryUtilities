import SwiftUI

struct UtilitySelectorView: View {
    @State var utility:Utility;
    @State var chemical:String;
    @EnvironmentObject var funcState:FuncState;
    
    enum Utility:String, CaseIterable, Identifiable {
        case MW;
        case Dilution;
        
        var id:Self {self}
    }
    
    init() {
        chemical = "";
        utility = Utility.Dilution;
    }
    
    func hasData() -> Bool{
        if (funcState.chemical != ""){
            return true;
        } else if (funcState.concentrationFinal != 0){
            return true;
        } else if (funcState.concentrationInitial != 0){
            return true;
        } else if (funcState.molecularWeight != 0){
            return true;
        } else if (funcState.volumeFinal != 0){
            return true;
        } else if (funcState.volumeInitial != 0){
            return true;
        } else {
            return false;
        }
    }
    
    func clearData() {
        funcState.clearData();
    }
    
    var body: some View {
        GeometryReader{geo in
            VStack {
                Image("Chem Icon").resizable().frame(width: geo.size.width, height: geo.size.width)
                if (funcState.chemical == "") {
                    HStack {
                        Text("Chemical:").font(.system(size: geo.size.width * 0.069)).foregroundColor(.teal).bold();
                        TextField("Enter Chemical Name", text: $chemical).font(.system(size: geo.size.width * 0.069));
                    }
                }
                DataView().environmentObject(funcState);
                HStack {
                    Text("Utility:").font(.system(size: geo.size.width * 0.069)).foregroundColor(.teal).bold();
                    Picker(selection: $utility, label: Text("Utility")) {
                        ForEach(Utility.allCases) {casename in
                            Text(casename.rawValue.capitalized);
                        }
                    }.pickerStyle(.segmented).colorMultiply(.teal)
                }
                Button("Confirm Selection") {
                    funcState.width = geo.size.width;
                    funcState.height = geo.size.height;
                    funcState.utility = utility.rawValue.capitalized;
                    if (funcState.chemical == "") {
                        funcState.chemical = chemical;
                    }
                    if(utility.rawValue.capitalized == "Mw") {
                        funcState.viewState = 2;
                    } else {
                        funcState.viewState = 1;
                    }
                }.font(.system(size: geo.size.width * 0.1)).foregroundColor(.teal);
                if (hasData()) {
                    Button("Clear Data") {
                        clearData();
                    }.font(.system(size: geo.size.width * 0.07))
                }
            }
        }
        Spacer();
    }
}
