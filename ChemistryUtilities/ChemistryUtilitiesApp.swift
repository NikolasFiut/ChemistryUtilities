import SwiftUI

class FuncState:ObservableObject {
    @Published var viewState:Int;
    @Published var utility:String?;
    @Published var chemical:String?;
    @Published var dilutionUnknown:String?;
    @Published var volumeTypeInitial:String?;
    @Published var volumeTypeFinal:String?;
    @Published var volumeInitial:Double?;
    @Published var volumeFinal:Double?;
    @Published var concentrationInitial:Double?;
    @Published var concentrationFinal:Double?;
    @Published var molecularWeight:Double?;
    @Published var formula:String?;
    @Published var width:CGFloat;
    @Published var height:CGFloat;
    
    init(viewState:Int) {
        self.chemical = "";
        self.molecularWeight = -1;
        self.viewState = viewState;
        self.concentrationInitial = 0;
        self.concentrationFinal = 0;
        self.volumeInitial = 0;
        self.volumeFinal = 0;
        self.formula = "";
        self.width = 0;
        self.height = 0;
    }
    
    func clearData() {
        self.chemical = "";
        self.molecularWeight = -1;
        self.viewState = viewState;
        self.concentrationInitial = 0;
        self.concentrationFinal = 0;
        self.volumeInitial = 0;
        self.volumeFinal = 0;
        self.formula = "";
    }
}

@main
struct ChemistryUtilitiesApp: App {
    //Replace with the single parameter init after Testing
    @ObservedObject var funcState:FuncState = FuncState(viewState: 0);
    var body: some Scene {
        WindowGroup {
            VStack {
                if (funcState.viewState == 0) {
                    UtilitySelectorView().environmentObject(funcState).scaledToFit();
                } else if (funcState.viewState == 1) {
                    DilutionSelectorView().environmentObject(funcState).scaledToFit();
                } else if (funcState.viewState == 2) {
                    MolecularMassView().environmentObject(funcState).scaledToFit();
                }else {
                    Text("Invalid View State.");
                }
            }
        }
    }
}
