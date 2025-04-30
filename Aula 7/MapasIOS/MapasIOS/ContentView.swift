//
//  ContentView.swift
//  MapasIOS
//
//  Created by Turma01-17 on 11/04/25.
//

import SwiftUI
import MapKit

struct Location: Hashable{
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
    
}


struct ContentView: View {
    
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(
        center:CLLocationCoordinate2D(latitude:-16, longitude:-48), span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30))
    )
    
    @State var shitaView: Bool = false

    
    var arrayLocais = [
        Location(nome: "Cristo Redentor", foto: "https://blog.paineirascorcovado.com.br/wp-content/uploads/2025/01/Paineiras_Drone_C-008-scaled.jpg", descricao: "Cristo Redentor é uma estátua que retrata Jesus Cristo localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, dentro do Parque Nacional da Tijuca. Tem vista para parte considerável da cidade brasileira do Rio de Janeiro, sendo a frente da estátua voltada para a Baía de Guanabara e as costas para a Floresta da Tijuca. Feito de concreto armado e pedra-sabão,[1][2][3] tem trinta metros de altura (uma das maiores estátuas do mundo), sem contar os oito metros do pedestal, sendo a mais alta estátua do mundo no estilo Art Déco.[4][5] Seus braços se esticam por 28 metros de largura e a estrutura pesa 1145 toneladas.[6] O monumento é um santuário católico e a Arquidiocese do Rio de Janeiro administra a estátua e a capela localizada dentro do seu pedestal, além de também ser responsável pelas celebrações e manutenção do conjunto. O direito de gerenciar a estátua foi concedido pela União à Arquidiocese do Rio na década de 1930, mas o acesso à estátua e a administração do platô onde ela se localiza são realizados pelo Parque Nacional da Tijuca, uma Unidade de Conservação federal gerida pelo Instituto Chico Mendes de Conservação da Biodiversidade (ICMBio).", latitude: -22.9519175 , longitude: -43.2105696),
        
        Location(nome: "Monte Fuji", foto: "https://a.travel-assets.com/findyours-php/viewfinder/images/res70/490000/490338-lake-kawaguchi.jpg", descricao: "O monte Fuji (em japonês 富士山 Fuji-san) é a mais alta montanha da ilha de Honshu e de todo o arquipélago japonês. É um vulcão ativo, porém de baixo risco de erupção. O monte Fuji localiza-se a oeste de Tóquio (de onde pode ser visto num dia limpo) próximo da costa do oceano Pacífico da ilha de Honshu, na fronteira entre as províncias de Shizuoka e de Yamanashi. Existem três pequenas cidades que envolvem o Monte Fuji, Gotemba a leste, Fuji-Yoshida a norte e Fujinomiya a sudoeste. O monte Fuji é um dos símbolos mais conhecidos do Japão, sendo frequentemente retratado em obras de arte e fotografias e recebendo muitas visitas de alpinistas turistas.", latitude: 35.360722 , longitude: 138.7274382),
        
        Location(nome: "Torre Eiffel", foto: "https://casacor.abril.com.br/_next/image?url=https%3A%2F%2Fd2iwr6cbo83dtj.cloudfront.net%2F2024%2F04%2Fil-vagabiondo-FlkxnZdebMk-unsplash.jpg&w=3840&q=75", descricao: "Torre Eiffel (em francês: Tour Eiffel, /tuʀ ɛfɛl/) é uma torre de treliça de ferro forjado no Champ de Mars, em Paris, França. Tem o nome do engenheiro Gustave Eiffel, cuja empresa projetou e construiu a torre.Localmente apelidada de 'Dama de Ferro' (em francês: La dame de fer), foi construída de 1887 a 1889 como a peça central da Exposição Universal de 1889 e foi inicialmente criticada por alguns dos principais artistas e intelectuais franceses por seu design, mas tornou-se um ícone cultural global da França e uma das estruturas mais reconhecidas do mundo.[5] A Torre Eiffel é o monumento pago mais visitado do mundo; 6,91 milhões de pessoas subiram na torre em 2015. Foi designado um monumento histórico em 1964 e foi nomeado parte do Patrimônio Mundial pela UNESCO (Paris, Margens do Sena') em 1991.[6] A torre tem 330 metros de altura,[7] aproximadamente a mesma altura de um edifício de 110 andares, e é a estrutura mais alta de Paris. Sua base é quadrada, medindo 125 metros de cada lado. Durante sua construção, a Torre Eiffel ultrapassou o Monumento de Washington para se tornar a estrutura mais alta do mundo feita pelo homem, título que manteve por 41 anos até que o Edifício Chrysler em Nova York foi concluído em 1930. Foi a primeira estrutura do mundo a ultrapassar a marca dos 200 e 300 metros de altura. Devido à adição de uma antena de transmissão no topo da torre em 1957, agora ela é 5,2 metros mais alta que o Edifício Chrysler. Excluindo os transmissores, a Torre Eiffel é a segunda estrutura autônoma mais alta da França depois do Viaduto de Millau.A torre tem três andares para visitantes, com restaurantes no primeiro e segundo níveis. A plataforma superior do andar superior fica a 276 m acima do solo — o deck de observação mais alto acessível ao público na União Europeia. Os ingressos podem ser adquiridos para subir por escadas ou elevador para o primeiro e segundo andares. A subida do nível do solo para o primeiro andar é de mais de 300 degraus, assim como a subida do primeiro nível para o segundo, fazendo toda a subida ser composta por 600 degraus. Embora haja uma escada para o primeiro andar, geralmente ele é acessível apenas por elevador.", latitude: 48.8582637 , longitude: 2.2942401),
        
        Location(nome: "Pirâmides de Gizé", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/All_Gizah_Pyramids.jpg/500px-All_Gizah_Pyramids.jpg", descricao: "Necrópole de Gizé (em árabe: جيزة يسروبوليس), também chamada de Pirâmides de Gizé, Guizé ou Guisa,[1] é um sítio arqueológico localizado no planalto de Gizé, nos arredores do Cairo, Egito. Este complexo de monumentos antigos inclui os três complexos de pirâmides conhecidas como as Grandes Pirâmides, a escultura maciça conhecida como a Grande Esfinge, vários cemitérios, uma vila operária e um complexo industrial. A palavra pirâmide não provém da língua egípcia. Formou-se a partir do grego 'pyra' (que quer dizer fogo, luz, símbolo) e 'midos' (que significa medidas).A necrópole está localizada a cerca de 9 km do interior do deserto para a cidade velha de Gizé, no Nilo, e cerca de 25 km a sudoeste do centro da cidade do Cairo, no local da antiga cidade egípcia de Mênfis. As pirâmides, que sempre tiveram grande importância como emblemas do antigo Egito no imaginário ocidental,[2][3] foram popularizadas nos tempos helenísticos, quando a Grande Pirâmide foi listada por Antípatro de Sídon como uma das Sete Maravilhas do Mundo. É, de longe, a mais antiga das maravilhas do mundo antigo e a única que ainda existe.", latitude: 29.9789881 , longitude: 31.13432),
        
        Location(nome: "Estatua da Liberdade", foto: "https://cdn-imgix.headout.com/tour/30357/TOUR-IMAGE/6cdcf542-452d-4897-beed-76cf68f154e4-1act-de005e04-05d9-4715-96b0-6a089d5c3460.jpg?auto=format&w=1222.3999999999999&h=687.6&q=90&fit=crop&ar=16%3A9&crop=faces", descricao: "Estátua da Liberdade (em inglês: The Statue of Liberty; em francês: Statue de la Liberté), cujo nome oficial é A Liberdade Iluminando o Mundo (em inglês: Liberty Enlightening the World; em francês: La liberté éclairant le monde), é uma escultura neoclássica colossal localizada na ilha da Liberdade no porto de Nova Iorque, nos Estados Unidos. A estátua de cobre, projetada pelo escultor francês Frédéric Auguste Bartholdi, que se baseou no Colosso de Rodes para edificá-la, foi construída por Gustave Eiffel e inaugurada em 28 de outubro de 1886.[7] Foi um presente dado aos Estados Unidos pelo povo da França.[8] A estátua é de uma figura feminina vestida que representa Libertas, deusa romana, que carrega uma tocha e um tabula ansata (uma tabuleta que evoca uma lei) sobre a qual está inscrita a data da Declaração da Independência dos Estados Unidos, 4 de julho de 1776.[8] Uma corrente quebrada encontra-se a sob pés. A estátua é um ícone da liberdade e dos Estados Unidos, além de ser um símbolo de boas-vindas aos imigrantes que chegam do exterior.", latitude: 40.6892664 , longitude: -74.0445245)
        
        
        
    ]
    
    @State var aux =  Location(nome: "Estatua da Liberdade", foto: "https://cdn-imgix.headout.com/tour/30357/TOUR-IMAGE/6cdcf542-452d-4897-beed-76cf68f154e4-1act-de005e04-05d9-4715-96b0-6a089d5c3460.jpg?auto=format&w=1222.3999999999999&h=687.6&q=90&fit=crop&ar=16%3A9&crop=faces", descricao: "Estátua da Liberdade (em inglês: The Statue of Liberty; em francês: Statue de la Liberté), cujo nome oficial é A Liberdade Iluminando o Mundo (em inglês: Liberty Enlightening the World; em francês: La liberté éclairant le monde), é uma escultura neoclássica colossal localizada na ilha da Liberdade no porto de Nova Iorque, nos Estados Unidos. A estátua de cobre, projetada pelo escultor francês Frédéric Auguste Bartholdi, que se baseou no Colosso de Rodes para edificá-la, foi construída por Gustave Eiffel e inaugurada em 28 de outubro de 1886.[7] Foi um presente dado aos Estados Unidos pelo povo da França.[8] A estátua é de uma figura feminina vestida que representa Libertas, deusa romana, que carrega uma tocha e um tabula ansata (uma tabuleta que evoca uma lei) sobre a qual está inscrita a data da Declaração da Independência dos Estados Unidos, 4 de julho de 1776.[8] Uma corrente quebrada encontra-se a sob pés. A estátua é um ícone da liberdade e dos Estados Unidos, além de ser um símbolo de boas-vindas aos imigrantes que chegam do exterior.", latitude: 40.6892664 , longitude: -74.0445245)
    
    
    @State private var selectedCountry =  Location(nome: "Cristo Redentor", foto: "https://cdn-imgix.headout.com/tour/30357/TOUR-IMAGE/6cdcf542-452d-4897-beed-76cf68f154e4-1act-de005e04-05d9-4715-96b0-6a089d5c3460.jpg?auto=format&w=1222.3999999999999&h=687.6&q=90&fit=crop&ar=16%3A9&crop=faces", descricao: "Estátua da Liberdade (em inglês: The Statue of Liberty; em francês: Statue de la Liberté), cujo nome oficial é A Liberdade Iluminando o Mundo (em inglês: Liberty Enlightening the World; em francês: La liberté éclairant le monde), é uma escultura neoclássica colossal localizada na ilha da Liberdade no porto de Nova Iorque, nos Estados Unidos. A estátua de cobre, projetada pelo escultor francês Frédéric Auguste Bartholdi, que se baseou no Colosso de Rodes para edificá-la, foi construída por Gustave Eiffel e inaugurada em 28 de outubro de 1886.[7] Foi um presente dado aos Estados Unidos pelo povo da França.[8] A estátua é de uma figura feminina vestida que representa Libertas, deusa romana, que carrega uma tocha e um tabula ansata (uma tabuleta que evoca uma lei) sobre a qual está inscrita a data da Declaração da Independência dos Estados Unidos, 4 de julho de 1776.[8] Uma corrente quebrada encontra-se a sob pés. A estátua é um ícone da liberdade e dos Estados Unidos, além de ser um símbolo de boas-vindas aos imigrantes que chegam do exterior.", latitude: 40.6892664 , longitude: -74.0445245)
    
    
    
    
    var body: some View {
        
        ZStack{
            
            
            Map(position: $position){
                
                ForEach(arrayLocais, id: \.self) { index in
                    Annotation(index.nome, coordinate:CLLocationCoordinate2D(latitude: index.latitude,longitude:  index.longitude)){
                        
                        Image(systemName: "mappin.circle.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .font(.system(size: 30))
                            .onTapGesture {
                                shitaView.toggle()
                                aux = index
                            }
                            .sheet(isPresented: $shitaView) {
                                SheetView(recebe: $aux)
                                
                            }
                    }
                    
                }
            }.ignoresSafeArea()
            
            VStack{
                Picker(selection: $selectedCountry, label: Text("Lugares para Visitar")){
                    
                    ForEach(arrayLocais, id: \.self) { i in
                        Text(i.nome)
                    }.onChange(of: selectedCountry){ i in
                        position = MapCameraPosition.region(MKCoordinateRegion(
                            center:CLLocationCoordinate2D(latitude: i.latitude, longitude: i.longitude), span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30)))
                        
                        
                        
                    }
                    
                }.background(Rectangle()
                    .fill(.yellow)
                    .frame(width: 200, height: 60)
                    .cornerRadius(6)
                    
                             
                ).padding()
                    .accentColor(.black)
                
                    Spacer()
                
                    Text("Pontos Turisticos pelo mundo")
                    .bold()
                    .background(Rectangle()
                        .fill(.yellow)
                        .frame(width: 300, height: 60)
                        .cornerRadius(6))

            }

           
            
        }
        
        
        
        
        
    }
}
        
        
        
        #Preview {
            ContentView()
        }
        
        struct SheetView : View {
            @Binding var recebe : Location
            var body: some View {
                ZStack {
                    Rectangle()
                        .foregroundColor(.yellow)
                        .ignoresSafeArea()
                    
                    ScrollView{
                        Spacer()
                        
                        VStack {
                            
                            Spacer()
                            
                            VStack{
                                
                                AsyncImage(url: URL(string: recebe.foto)){ image in
                                    image.resizable()
                                        .scaledToFill()
                                        .scaledToFill()
                                } placeholder: {
                                    ProgressView()
                                }
                                
                                
                            }.padding()
                            
                            Spacer()
                            
                            VStack{
                                Text(recebe.nome)
                                    .foregroundColor(.brown)
                                    .bold()
                                    .font(.system(size: 30))
                                
                            }
                            Spacer()
                            
                            VStack{
                                Text(recebe.descricao)
                                    .background(.brown)
                                
                                
                            }.padding()
                        }
                        
                        
                    }
                    
                    
                }
            }
        }
    
