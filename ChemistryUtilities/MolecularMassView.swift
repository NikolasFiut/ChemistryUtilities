import SwiftUI

struct MolecularMassView: View {
    @EnvironmentObject var funcState:FuncState;
    @State var element:String;
    @State var quantity:String;
    @State var prefix:String;
    
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
    let prefixes: [String: String] = ["Hydrogen": "H",
                                      "Helium": "He",
                                      "Lithium":"Li",
                                      "Beryllium":"Be",
                                      "Boron":"B",
                                      "Carbon":"C",
                                      "Nitrogen":"N",
                                      "Oxygen":"O",
                                      "Fluorine":"F",
                                      "Neon":"Ne",
                                      "Sodium":"Na",
                                      "Magnesium":"Mg",
                                      "Aluminium":"Al",
                                      "Silicon":"Si",
                                      "Phosphorus":"P",
                                      "Sulfur":"S",
                                      "Chlorine":"Cl",
                                      "Argon":"Ar",
                                      "Potassium":"K",
                                      "Calcium":"Ca",
                                      "Scandium":"Sc",
                                      "Titanium":"Ti",
                                      "Vanadium":"V",
                                      "Chromium":"Cr",
                                      "Manganese":"Mn",
                                      "Iron":"Fe",
                                      "Cobalt":"Co",
                                      "Nickel":"Ni",
                                      "Copper":"Cu",
                                      "Zinc":"Zn",
                                      "Gallium":"Ga",
                                      "Germanium":"Ge",
                                      "Arsenic":"As",
                                      "Selenium":"Se",
                                      "Bromine":"Br",
                                      "Krypton":"Kr",
                                      "Rubidium":"Rb",
                                      "Strontium":"Sr",
                                      "Yttrium":"Y",
                                      "Zirconium":"Zr",
                                      "Niobium":"Nb",
                                      "Molybdenum":"Mo",
                                      "Technetium":"Tc",
                                      "Ruthenium":"Ru",
                                      "Rhodium":"Rh",
                                      "Palladium":"Pd",
                                      "Silver":"Ag",
                                      "Cadmium":"Cd",
                                      "Indium":"In",
                                      "Tin":"Sn",
                                      "Antimony":"Sb",
                                      "Tellurium":"Te",
                                      "Iodine":"I",
                                      "Xenon":"Xe",
                                      "Caesium":"Cs",
                                      "Barium":"Ba",
                                      "Lanthanum":"La",
                                      "Cerium":"Ce",
                                      "Praseodymium":"Pr",
                                      "Neodymium":"Nd",
                                      "Promethium":"Pm",
                                      "Samarium":"Sm",
                                      "Europium":"Eu",
                                      "Gadolinium":"Gd",
                                      "Terbium":"Tb",
                                      "Dysprosium":"Dy",
                                      "Holmium":"Ho",
                                      "Erbium":"Er",
                                      "Thulium":"Tm",
                                      "Ytterbium":"Yb",
                                      "Lutetium":"Lu",
                                      "Hafnium":"Hf",
                                      "Tantalum":"Ta",
                                      "Tungsten":"W",
                                      "Rhenium":"Re",
                                      "Osmium":"Os",
                                      "Iridium":"Ir",
                                      "Platinum":"Pt",
                                      "Gold":"Au",
                                      "Mercury":"Hg",
                                      "Thallium":"Tl",
                                      "Lead":"Pb",
                                      "Bismuth":"Bi",
                                      "Polonium":"Po",
                                      "Astatine":"At",
                                      "Radon":"Rn",
                                      "Francium":"Fr",
                                      "Radium":"Ra",
                                      "Actinium":"Ac",
                                      "Thorium":"Th",
                                      "Protactinium":"Pa",
                                      "Uranium":"U",
                                      "Neptunium":"Np",
                                      "Plutonium":"Pu",
                                      "Americium":"Am",
                                      "Curium":"Cm",
                                      "Berkelium":"Bk",
                                      "Californium":"Cf",
                                      "Einsteinium":"Es",
                                      "Fermium":"Fm",
                                      "Mendelevium":"Md",
                                      "Nobelium":"No",
                                      "Lawrencium":"Lr",
                                      "Rutherfordium":"Rf",
                                      "Dubnium":"Db",
                                      "Seaborgium":"Sb",
                                      "Bohrium":"Bh",
                                      "Hassium":"Hs",
                                      "Meitnerium":"Mt",
                                      "Darmstadtium":"Ds",
                                      "Roentgenium":"Rg",
                                      "Copernicium":"Cn",
                                      "Nihonium":"Nh",
                                      "Flerovium":"Fl",
                                      "Moscovium":"Mc",
                                      "Livermorium":"Lv",
                                      "Tennessine":"Ts",
                                      "Oganesson":"OgS"]
    
    init() {
        self.element = "Hydrogen";
        self.quantity = "";
        self.prefix = "";
        
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
                                element = "Hydrogen";
                                prefix = prefixes[element]!;
                            }
                            Button("Li"){
                                element = "Lithium";
                                prefix = prefixes[element]!;
                            }
                            Button("Na"){
                                element = "Sodium";
                                prefix = prefixes[element]!;
                            }
                            Button("K "){
                                element = "Potassium";
                                prefix = prefixes[element]!;
                            }
                            Button("Rb"){
                                element = "Rubidium";
                                prefix = prefixes[element]!;
                            }
                            Button("Cs"){
                                element = "Caesium";
                                prefix = prefixes[element]!;
                            }
                            Button("Fr"){
                                element = "Francium";
                                prefix = prefixes[element]!;
                            }
                            Text("H").opacity(0);
                            Text("H").opacity(0);
                        }
                        VStack(alignment: .leading){
                            Button("Be"){
                                element = "Beryllium";
                                prefix = prefixes[element]!;
                            }
                            Button("Mg"){
                                element = "Magnesium";
                                prefix = prefixes[element]!;
                            }
                            Button("Ca"){
                                element = "Calcium";
                                prefix = prefixes[element]!;
                            }
                            Button("Sr"){
                                element = "Strontium";
                                prefix = prefixes[element]!;
                            }
                            Button("Ba"){
                                element = "Barium";
                                prefix = prefixes[element]!;
                            }
                            Button("Ra"){
                                element = "Radium";
                                prefix = prefixes[element]!;
                            }
                            Text("H").opacity(0);
                            Text("H").opacity(0);
                        }
                        VStack(alignment: .leading){
                            Button("Sc"){
                                element = "Scandium";
                                prefix = prefixes[element]!;
                            }
                            Button("Y"){
                                element = "Yttrium";
                                prefix = prefixes[element]!;
                            }
                            Button("La"){
                                element = "Lanthanum";
                                prefix = prefixes[element]!;
                            }
                            Button("Ac"){
                                element = "Actinium";
                                prefix = prefixes[element]!;
                            }
                            Button("Ce"){
                                element = "Cerium";
                                prefix = prefixes[element]!;
                            }
                            Button("Th"){
                                element = "Thorium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Ti"){
                                element = "Titanium";
                                prefix = prefixes[element]!;
                            }
                            Button("Zr"){
                                element = "Zirconium";
                                prefix = prefixes[element]!;
                            }
                            Button("Hf"){
                                element = "Hafnium";
                                prefix = prefixes[element]!;
                            }
                            Button("Rf"){
                                element = "Rutherfordium";
                                prefix = prefixes[element]!;
                            }
                            Button("Pr"){
                                element = "Praseodymium";
                                prefix = prefixes[element]!;
                            }
                            Button("Pa"){
                                element = "Protactinium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("V"){
                                element = "Vanadium";
                                prefix = prefixes[element]!;
                            }
                            Button("Nb"){
                                element = "Niobium";
                                prefix = prefixes[element]!;
                            }
                            Button("Ta"){
                                element = "Tantalum";
                                prefix = prefixes[element]!;
                            }
                            Button("Db"){
                                element = "Dubnium";
                                prefix = prefixes[element]!;
                            }
                            Button("Nd"){
                                element = "Neodymium";
                                prefix = prefixes[element]!;
                            }
                            Button("U"){
                                element = "Uranium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Cr"){
                                element = "Chromium";
                                prefix = prefixes[element]!;
                            }
                            Button("Mo"){
                                element = "Molybdenum";
                                prefix = prefixes[element]!;
                            }
                            Button("W"){
                                element = "Tungsten";
                                prefix = prefixes[element]!;
                            }
                            Button("Sg"){
                                element = "Seaborgium";
                                prefix = prefixes[element]!;
                            }
                            Button("Pm"){
                                element = "Promethium";
                                prefix = prefixes[element]!;
                            }
                            Button("Np"){
                                element = "Neptunium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Mn"){
                                element = "Manganese";
                                prefix = prefixes[element]!;
                            }
                            Button("Tc"){
                                element = "Technetium";
                                prefix = prefixes[element]!;
                            }
                            Button("Re"){
                                element = "Rhenium";
                                prefix = prefixes[element]!;
                            }
                            Button("Bh"){
                                element = "Bohrium";
                                prefix = prefixes[element]!;
                            }
                            Button("Sm"){
                                element = "Samarium";
                                prefix = prefixes[element]!;
                            }
                            Button("Pu"){
                                element = "Plutonium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Fe"){
                                element = "Iron";
                                prefix = prefixes[element]!;
                            }
                            Button("Ru"){
                                element = "Ruthenium";
                                prefix = prefixes[element]!;
                            }
                            Button("Os"){
                                element = "Osmium";
                                prefix = prefixes[element]!;
                            }
                            Button("Hs"){
                                element = "Hassium";
                                prefix = prefixes[element]!;
                            }
                            Button("Eu"){
                                element = "Europium";
                                prefix = prefixes[element]!;
                            }
                            Button("Am"){
                                element = "Americium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Co"){
                                element = "Cobalt";
                                prefix = prefixes[element]!;
                            }
                            Button("Rh"){
                                element = "Rhodium";
                                prefix = prefixes[element]!;
                            }
                            Button("Ir"){
                                element = "Iridium";
                                prefix = prefixes[element]!;
                            }
                            Button("Mt"){
                                element = "Meitnerium";
                                prefix = prefixes[element]!;
                            }
                            Button("Gd"){
                                element = "Gadolinium";
                                prefix = prefixes[element]!;
                            }
                            Button("Cm"){
                                element = "Curium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Ni"){
                                element = "Nickel";
                                prefix = prefixes[element]!;
                            }
                            Button("Pd"){
                                element = "Palladium";
                                prefix = prefixes[element]!;
                            }
                            Button("Pt"){
                                element = "Platinum";
                                prefix = prefixes[element]!;
                            }
                            Button("Ds"){
                                element = "Darmstadtium";
                                prefix = prefixes[element]!;
                            }
                            Button("Tb"){
                                element = "Terbium";
                                prefix = prefixes[element]!;
                            }
                            Button("Bk"){
                                element = "Berkelium";
                                prefix = prefixes[element]!;
                            }
                        }
                    }
                    Group{
                        VStack(alignment: .leading){
                            Button("Cu"){
                                element = "Copper";
                                prefix = prefixes[element]!;
                            }
                            Button("Ag"){
                                element = "Silver";
                                prefix = prefixes[element]!;
                            }
                            Button("Au"){
                                element = "Gold";
                                prefix = prefixes[element]!;
                            }
                            Button("Rg"){
                                element = "Roentgenium";
                                prefix = prefixes[element]!;
                            }
                            Button("Dy"){
                                element = "Dysprosium";
                                prefix = prefixes[element]!;
                            }
                            Button("Cf"){
                                element = "Californium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("Zn"){
                                element = "Zinc";
                                prefix = prefixes[element]!;
                            }
                            Button("Cd"){
                                element = "Cadmium";
                                prefix = prefixes[element]!;
                            }
                            Button("Hg"){
                                element = "Mercury";
                                prefix = prefixes[element]!;
                            }
                            Button("Cn"){
                                element = "Copernicium";
                                prefix = prefixes[element]!;
                            }
                            Button("Ho"){
                                element = "Holmium";
                                prefix = prefixes[element]!;
                            }
                            Button("Es"){
                                element = "Einsteinium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("B"){
                                element = "Boron";
                                prefix = prefixes[element]!;
                            }
                            Button("Al"){
                                element = "Aluminium";
                                prefix = prefixes[element]!;
                            }
                            Button("Ga"){
                                element = "Gallium";
                                prefix = prefixes[element]!;
                            }
                            Button("In"){
                                element = "Indium";
                                prefix = prefixes[element]!;
                            }
                            Button("Tl"){
                                element = "Thallium";
                                prefix = prefixes[element]!;
                            }
                            Button("Nh"){
                                element = "Nihonium";
                                prefix = prefixes[element]!;
                            }
                            Button("Er"){
                                element = "Erbium";
                                prefix = prefixes[element]!;
                            }
                            Button("Fm"){
                                element = "Fermium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("C"){
                                element = "Carbon";
                                prefix = prefixes[element]!;
                            }
                            Button("Si"){
                                element = "Silicon";
                                prefix = prefixes[element]!;
                            }
                            Button("Ge"){
                                element = "Germanium";
                                prefix = prefixes[element]!;
                            }
                            Button("Sn"){
                                element = "Tin";
                                prefix = prefixes[element]!;
                            }
                            Button("Pb"){
                                element = "Lead";
                                prefix = prefixes[element]!;
                            }
                            Button("Fl"){
                                element = "Flerovium";
                                prefix = prefixes[element]!;
                            }
                            Button("Tm"){
                                element = "Thulium";
                                prefix = prefixes[element]!;
                            }
                            Button("Md"){
                                element = "Mendelevium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("N"){
                                element = "Nitrogen";
                                prefix = prefixes[element]!;
                            }
                            Button("P"){
                                element = "Phosphorus";
                                prefix = prefixes[element]!;
                            }
                            Button("As"){
                                element = "Arsenic";
                                prefix = prefixes[element]!;
                            }
                            Button("Sb"){
                                element = "Antimony";
                                prefix = prefixes[element]!;
                            }
                            Button("Bi"){
                                element = "Bismuth";
                                prefix = prefixes[element]!;
                            }
                            Button("Mc"){
                                element = "Moscovium";
                                prefix = prefixes[element]!;
                            }
                            Button("Yb"){
                                element = "Ytterbium";
                                prefix = prefixes[element]!;
                            }
                            Button("No"){
                                element = "Nobelium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("O"){
                                element = "Oxygen";
                                prefix = prefixes[element]!;
                            }
                            Button("S"){
                                element = "Sulfur";
                                prefix = prefixes[element]!;
                            }
                            Button("Se"){
                                element = "Selenium";
                                prefix = prefixes[element]!;
                            }
                            Button("Te"){
                                element = "Tellurium";
                                prefix = prefixes[element]!;
                            }
                            Button("Po"){
                                element = "Polonium";
                                prefix = prefixes[element]!;
                            }
                            Button("Lv"){
                                element = "Livermorium";
                                prefix = prefixes[element]!;
                            }
                            Button("Lu"){
                                element = "Lutetium";
                                prefix = prefixes[element]!;
                            }
                            Button("Lr"){
                                element = "Lawrencium";
                                prefix = prefixes[element]!;
                            }
                        }
                        VStack(alignment: .leading){
                            Button("F"){
                                element = "Fluorine";
                                prefix = prefixes[element]!;
                            }
                            Button("Cl"){
                                element = "Chlorine";
                                prefix = prefixes[element]!;
                            }
                            Button("Br"){
                                element = "Bromine";
                                prefix = prefixes[element]!;
                            }
                            Button("I"){
                                element = "Iodine";
                                prefix = prefixes[element]!;
                            }
                            Button("At"){
                                element = "Astatine";
                                prefix = prefixes[element]!;
                            }
                            Button("Ts"){
                                element = "Tennessine";
                                prefix = prefixes[element]!;
                            }
                            Text("H").opacity(0);
                            Text("H").opacity(0);
                        }
                        VStack(alignment: .leading){
                            Button("He"){
                                element = "Helium";
                                prefix = prefixes[element]!;
                            }
                            Button("Ne"){
                                element = "Neon";
                                prefix = prefixes[element]!;
                            }
                            Button("Ar"){
                                element = "Argon";
                                prefix = prefixes[element]!;
                            }
                            Button("Kr"){
                                element = "Krypton";
                                prefix = prefixes[element]!;
                            }
                            Button("Xe"){
                                element = "Xenon";
                                prefix = prefixes[element]!;
                            }
                            Button("Rn"){
                                element = "Radon";
                                prefix = prefixes[element]!;
                            }
                            Button("Og"){
                                element = "Oganesson";
                                prefix = prefixes[element]!;
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
                if((Double(quantity) != nil))
                {
                    Button("Calculate"){
                        if(funcState.molecularWeight! == -1){
                            funcState.molecularWeight = 0;
                        }
                        funcState.molecularWeight = funcState.molecularWeight! + elements[element]! * Double(quantity)!;
                        funcState.formula = funcState.formula! + prefix + quantity;
                        quantity = "";
                    }
                }
                
                Button("Reset MW"){
                    funcState.molecularWeight = -1;
                    funcState.formula = "";
                }
                //Text("\(elements[index!].key)");
                //Text("\(atomicMass!)");
                //Text("\(prefix)");
                //Text("\(elements[element]!)");
            }
        }
        Spacer();
    }
}
