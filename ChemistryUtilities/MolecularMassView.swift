import SwiftUI

struct MolecularMassView: View {
    @EnvironmentObject var funcState:FuncState;
    @State var element:String;
    @State var quantity:String;
    
    let elements: [String: Double] = ["Hydrogen": 1.008,
                    "Helium": 4.003,
                    "Lithium":6.94,
                    "Beryllium":9.012,
                    "Boron":10.81,
                    "Carbon":12.011,
                    "Nitrogen":14.007,
                    "Oxygen":15.999,
                    "Fluorine":18.998,
                    "Neon":20.180,
                    "Sodium":22.990,
                    "Magnesium":24.305,
                    "Aluminium":26.982,
                    "Silicon":28.805,
                    "Phosphorus":30.974,
                    "Sulfur":32.06,
                    "Chlorine":35.45,
                    "Argon":39.95,
                    "Potassium":39.098,
                    "Calcium":40.078,
                    "Scandium":44.956,
                    "Titanium":47.867,
                    "Vanadium":50.942,
                    "Chromium":51.996,
                    "Manganese":54.938,
                    "Iron":55.845,
                    "Cobalt":58.933,
                    "Nickel":58.693,
                    "Copper":63.546,
                    "Zinc":65.38,
                    "Gallium":69.723,
                    "Germanium":72.630,
                    "Arsenic":74.922,
                    "Selenium":78.971,
                    "Bromine":79.904,
                    "Krypton":83.798,
                    "Rubidium":85.468,
                    "Strontium":87.62,
                    "Yttrium":88.906,
                    "Zirconium":91.224,
                    "Niobium":92.906,
                    "Molybdenum":95.95,
                    "Technetium":98,
                    "Ruthenium":101.07,
                    "Rhodium":102.906,
                    "Palladium":106.42,
                    "Silver":107.868,
                    "Cadmium":112.414,
                    "Indium":114.818,
                    "Tin":118.710,
                    "Antimony":121.760,
                    "Tellurium":127.60,
                    "Iodine":126.904,
                    "Xenon":131.293,
                    "Caesium":132.905,
                    "Barium":137.327,
                    "Lanthanum":138.905,
                    "Cerium":140.116,
                    "Praseodymium":140.908,
                    "Neodymium":144.242,
                    "Promethium":145,
                    "Samarium":150.36,
                    "Europium":151.964,
                    "Gadolinium":157.25,
                    "Terbium":158.925,
                    "Dysprosium":162.500,
                    "Holmium":164.930,
                    "Erbium":167.259,
                    "Thulium":168.934,
                    "Ytterbium":173.045,
                    "Lutetium":174.967,
                    "Hafnium":178.486,
                    "Tantalum":180.948,
                    "Tungsten":183.84,
                    "Rhenium":186.207,
                    "Osmium":190.23,
                    "Iridium":192.217,
                    "Platinum":195.084,
                    "Gold":196.967,
                    "Mercury":200.592,
                    "Thallium":204.38,
                    "Lead":207.2,
                    "Bismuth":208.980,
                    "Polonium":209,
                    "Astatine":210,
                    "Radon":222,
                    "Francium":223,
                    "Radium":226,
                    "Actinium":227,
                    "Thorium":232.038,
                    "Protactinium":231.036,
                    "Uranium":238.029,
                    "Neptunium":237,
                    "Plutonium":244,
                    "Americium":243,
                    "Curium":247,
                    "Berkelium":247,
                    "Californium":251,
                    "Einsteinium":252,
                    "Fermium":257,
                    "Mendelevium":258,
                    "Nobelium":259,
                    "Lawrencium":262,
                    "Rutherfordium":267,
                    "Dubnium":268,
                    "Seaborgium":269,
                    "Bohrium":270,
                    "Hassium":269,
                    "Meitnerium":278,
                    "Darmstadtium":281,
                    "Roentgenium":280,
                    "Copernicium":285,
                    "Nihonium":286,
                    "Flerovium":289,
                    "Moscovium":289,
                    "Livermorium":293,
                    "Tennessine":294,
                    "Oganesson":294]
    
    init() {
        self.element = "Hydrogen";
        self.quantity = "";
        
        var id:Self {self}
    }
    
    var body: some View {
        let index = elements.index(forKey: element);
        let atomicMass = elements[element];
        VStack {
            HStack {
                Image("Molecular Mass").resizable().frame(width: 100, height: 100);
                VStack {
                    DataView().environmentObject(funcState);
                }
            }
            VStack(alignment: .leading){
                HStack(alignment: .lastTextBaseline){
                    Group{
                        VStack(alignment: .leading){
                            Button("H"){
                                
                            }
                            Button("Li"){
                                
                            }
                            Button("Na"){
                                
                            }
                            Button("K "){
                                
                            }
                            Button("Rb"){
                                
                            }
                            Button("Cs"){
                                
                            }
                            Button("Fr"){
                                
                            }
                            Text("H").opacity(0);
                            Text("H").opacity(0);
                        }
                        VStack(alignment: .leading){
                            Button("Be"){
                                
                            }
                            Button("Mg"){
                                
                            }
                            Button("Ca"){
                                
                            }
                            Button("Sr"){
                                
                            }
                            Button("Ba"){
                                
                            }
                            Button("Ra"){
                                
                            }
                            Text("H").opacity(0);
                            Text("H").opacity(0);
                        }
                        VStack(alignment: .leading){
                            Button("Sc"){
                                
                            }
                            Button("Y"){
                                
                            }
                            Button("La"){
                                
                            }
                            Button("Ac"){
                                
                            }
                            Button("Ce"){
                                
                            }
                            Button("Th"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Ti"){
                                
                            }
                            Button("Zr"){
                                
                            }
                            Button("Hf"){
                                
                            }
                            Button("Rf"){
                                
                            }
                            Button("Pr"){
                                
                            }
                            Button("Pa"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("V"){
                                
                            }
                            Button("Nb"){
                                
                            }
                            Button("Ta"){
                                
                            }
                            Button("Db"){
                                
                            }
                            Button("Nd"){
                                
                            }
                            Button("U"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Cr"){
                                
                            }
                            Button("Mo"){
                                
                            }
                            Button("W"){
                                
                            }
                            Button("Sg"){
                                
                            }
                            Button("Pm"){
                                
                            }
                            Button("Np"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Mn"){
                                
                            }
                            Button("Tc"){
                                
                            }
                            Button("Re"){
                                
                            }
                            Button("Bh"){
                                
                            }
                            Button("Sm"){
                                
                            }
                            Button("Pu"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Fe"){
                                
                            }
                            Button("Ru"){
                                
                            }
                            Button("Os"){
                                
                            }
                            Button("Hs"){
                                
                            }
                            Button("Eu"){
                                
                            }
                            Button("Am"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Co"){
                                
                            }
                            Button("Rh"){
                                
                            }
                            Button("Ir"){
                                
                            }
                            Button("Mt"){
                                
                            }
                            Button("Gd"){
                                
                            }
                            Button("Cm"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Ni"){
                                
                            }
                            Button("Pd"){
                                
                            }
                            Button("Pt"){
                                
                            }
                            Button("Ds"){
                                
                            }
                            Button("Tb"){
                                
                            }
                            Button("Bk"){
                                
                            }
                        }
                    }
                    Group{
                        VStack(alignment: .leading){
                            Button("Cu"){
                                
                            }
                            Button("Ag"){
                                
                            }
                            Button("Au"){
                                
                            }
                            Button("Rg"){
                                
                            }
                            Button("Dy"){
                                
                            }
                            Button("Cf"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Zn"){
                                
                            }
                            Button("Cd"){
                                
                            }
                            Button("Hg"){
                                
                            }
                            Button("Cn"){
                                
                            }
                            Button("Ho"){
                                
                            }
                            Button("Es"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("B"){
                                
                            }
                            Button("Al"){
                                
                            }
                            Button("Ga"){
                                
                            }
                            Button("In"){
                                
                            }
                            Button("Ti"){
                                
                            }
                            Button("Nh"){
                                
                            }
                            Button("Er"){
                                
                            }
                            Button("Fm"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("C"){
                                
                            }
                            Button("Si"){
                                
                            }
                            Button("Ge"){
                                
                            }
                            Button("Sn"){
                                
                            }
                            Button("Pb"){
                                
                            }
                            Button("Fl"){
                                
                            }
                            Button("Tm"){
                                
                            }
                            Button("Md"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("N"){
                                
                            }
                            Button("P"){
                                
                            }
                            Button("As"){
                                
                            }
                            Button("Sb"){
                                
                            }
                            Button("Bi"){
                                
                            }
                            Button("Mc"){
                                
                            }
                            Button("Yb"){
                                
                            }
                            Button("No"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("O"){
                                
                            }
                            Button("S"){
                                
                            }
                            Button("Se"){
                                
                            }
                            Button("Te"){
                                
                            }
                            Button("Po"){
                                
                            }
                            Button("Lv"){
                                
                            }
                            Button("Lu"){
                                
                            }
                            Button("Lr"){
                                
                            }
                        }
                        VStack(alignment: .leading){
                            Button("F"){
                                
                            }
                            Button("Cl"){
                                
                            }
                            Button("Br"){
                                
                            }
                            Button("I"){
                                
                            }
                            Button("At"){
                                
                            }
                            Button("Ts"){
                                
                            }
                            Text("H").opacity(0);
                            Text("H").opacity(0);
                        }
                        VStack(alignment: .leading){
                            Button("He"){
                                
                            }
                            Button("Ne"){
                                
                            }
                            Button("Ar"){
                                
                            }
                            Button("Kr"){
                                
                            }
                            Button("Xe"){
                                
                            }
                            Button("Rn"){
                                
                            }
                            Button("Og"){
                                
                            }
                            Text("H").opacity(0);
                            Text("H").opacity(0);
                        }
                    }
                }
            }
            Text("Element Selected: \(element)").font(.caption).foregroundColor(.teal);
            HStack {
                Spacer();
                Text("\(element) Quantity: ").font(.caption).foregroundColor(.teal);
                TextField("Enter quantity of \(element)", text: $quantity).font(.caption).foregroundColor(.teal);
            }
            HStack {
                Button("Calculate"){
                    element = "Boron"
                    //funcState.molecularWeight = funcState.molecularWeight! + 1.008 * Double(quantity)!;
                }
                Button("Reset MW"){
                    funcState.molecularWeight = 0;
                }
                Text("\(elements[index!].key)")
                Text("\(atomicMass!)");
            }
        }
        Spacer();
    }
}
