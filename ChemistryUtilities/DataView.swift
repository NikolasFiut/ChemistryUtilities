import SwiftUI

struct DataView: View {
    @EnvironmentObject var funcState:FuncState;
    
    var body: some View {
        VStack {
            if (funcState.chemical != "") {
                Text("Chemical: \(funcState.chemical!)");
            }
            if (funcState.formula != ""){
                Text("Formula: \(funcState.formula!)");
            }
            if (funcState.utility != "" && funcState.viewState != 0) {
                Text("Utility Selected: \(funcState.utility!)");
            }
            if (funcState.molecularWeight != -1) {
                Text("Molecular Weight: \(funcState.molecularWeight!)");
            }
            if (funcState.viewState != 0) {
                Button("Utility Home") {
                    funcState.viewState = 0;
                }.font(.system(size: funcState.width * 0.05));
            }
        }.font(.system(size: funcState.width * 0.03)).foregroundColor(.cyan)
    }
}
