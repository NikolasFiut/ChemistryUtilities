import SwiftUI

struct DilutionSelectorView: View {
    @EnvironmentObject var funcState:FuncState;
    @State var concentrationInitial:String;
    @State var concentrationFinal:String;
    @State var volumeInitial:String;
    @State var volumeFinal:String;
    @State var newError:Bool;
    
    init() {
        self.concentrationInitial = "";
        self.concentrationFinal = "";
        self.volumeInitial = "";
        self.volumeFinal = "";
        self.newError = false;
    }
    
    var body: some View {
        GeometryReader{geo in
            if(newError){
                VStack{
                    Text("ERROR: DATA MUST BE ENTERED FOR INITIAL CONCENTRATION AND INITIAL VOLUME AS WELL AS AT LEAST ONE OF THE FINAL VALUES TO CALCULATE THE DILUTION DATA.").font(.system(size: geo.size.width * 0.09)).foregroundColor(.red);
                    Button("Reset Error"){
                        newError = false;
                    }.font(.system(size: geo.size.width * 0.1)).foregroundColor(.green);
                }
            } else {
                VStack {
                    DataView().environmentObject(funcState);
                    Image("Dilution").resizable().frame(width: geo.size.width, height: geo.size.width);
                    VStack {
                        HStack {
                            Text("Initial Concentration: ");
                            if (funcState.concentrationInitial != 0) {
                                Text("\(funcState.concentrationInitial!.formatted(.number.precision(.fractionLength(2))))");
                            } else {
                                TextField("Enter initial concentration in M", text: $concentrationInitial);
                            }
                        }
                        HStack {
                            Text("Final Concentration: ");
                            if (funcState.concentrationFinal != 0) {
                                Text("\(funcState.concentrationFinal!.formatted(.number.precision(.fractionLength(2))))");
                            } else {
                                TextField("Enter final concentration in M", text: $concentrationFinal);
                            }
                        }
                        HStack {
                            Text("Initial Volume: ");
                            if (funcState.volumeInitial != 0) {
                                Text("\(funcState.volumeInitial!.formatted(.number.precision(.fractionLength(2))))");
                            } else {
                                TextField("Enter initial volume in L", text: $volumeInitial);
                            }
                        }
                        HStack {
                            Text("Final Volume: ");
                            if (funcState.volumeFinal != 0) {
                                Text("\(funcState.volumeFinal!.formatted(.number.precision(.fractionLength(2))))");
                            } else {
                                TextField("Enter final volume in L", text: $volumeFinal);
                            }
                        }
                    }.font(.system(size: geo.size.width * 0.0425)).foregroundColor(.teal)
                    if (funcState.concentrationInitial != 0 || funcState.concentrationFinal != 0 || funcState.volumeFinal != 0 || funcState.volumeInitial != 0) {
                        Button("Clear Dilution Values"){
                            concentrationInitial = "";
                            concentrationFinal = "";
                            volumeFinal = "";
                            volumeInitial = "";
                            funcState.concentrationInitial = 0;
                            funcState.concentrationFinal = 0;
                            funcState.volumeFinal = 0;
                            funcState.volumeInitial = 0;
                        }.font(.system(size: geo.size.width * 0.1))
                    } else {
                        Button("Calculate Dilution"){
                            if (concentrationFinal == "" && volumeFinal != "") {
                                funcState.concentrationInitial = Double(concentrationInitial);
                                funcState.volumeInitial = Double(volumeInitial);
                                funcState.volumeFinal = Double(volumeFinal);
                                funcState.concentrationFinal = funcState.concentrationInitial! * funcState.volumeInitial! / funcState.volumeFinal!;
                            } else if (volumeFinal == "" && concentrationFinal != "") {
                                funcState.concentrationInitial = Double(concentrationInitial);
                                funcState.volumeInitial = Double(volumeInitial);
                                funcState.concentrationFinal = Double(concentrationFinal);
                                funcState.volumeFinal = funcState.concentrationInitial! * funcState.volumeInitial! / funcState.concentrationFinal!;
                            } else {
                                newError = true;
                            }
                        }.font(.system(size: geo.size.width * 0.1))
                    }
                }
            }
        }
        Spacer();
    }
}
