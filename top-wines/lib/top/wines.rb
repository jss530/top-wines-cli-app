
module Top
  class Wines
    # Your code goes here...
      attr_accessor :description_list

      def get_page
        html = Nokogiri::HTML(open("https://vinepair.com/articles/best-wines-2016"))
      end

      def get_wines
        self.get_page.css("h3.float-fix")
      end

      def list
        wine_list = []

          self.get_wines.children.map do |wine_info|
            wine_list << wine_info.text
          end

        wine_list.join("\n")
        puts wine_list
      end

    def description_list
      #this will be the scraper to pull an array of descriptions
      @description_list = ["This wine is truly mind-blowing, and a prime example that Brunello is not the only Tuscan DOCG producing outstanding Sangiovese. In fact, this wine has us wondering whether Montepulciano might be the best place in Tuscany for the grape’s cultivation. Made by a boutique family producer, this wine is a beautiful balance of fruit and earth, with bright cherries equalized by tobacco and leather. What we find truly amazing about this wine is that it is not only drinking beautifully now, but it’s also a bottle that could be saved for years and it will only get better.",
        "Randall Grahm is a winemaker who continues to impress. His move to close all of his wines with screwcap might be seen by some people as cheapening the wines, but that couldn’t be further from the truth. This is a serious, age-worthy red wine that showcases why Randall is one of this country’s best winemakers. A Rhone-style red blend, the wine is deep and dark with the Syrah playing the dominant role. Flavors of dark berries marry with leather to create a delicious wine.",
        "It’s a rare occurrence to find a wine and winemaker both as exciting as Tabbarini. While Sagrantino may not be a grape that delivers immediately, once it’s aged it can be one of the greatest wines in the world. This bottle is the best example coming out of Montefalco. Ageable for decades, this is a wine that is worth purchasing and holding on to; a fantastic investment.",
      "Good Rioja is one of the greatest bangs for your buck in the wine world. This reserva from one of the region’s top producers doesn’t disappoint. The wine pours a beautiful ruby color with aromas of red cherries, vanilla, and leather. There are flavors of dark red fruit, with nice acidity and balanced tannins.",
      "This is what opulence tastes like. This is the purest expression of Nero d’Avola we have ever encountered. One sip and you’ll see why so many people think this little grape from Sicily really could be the next big thing in the wine world. It’s a truly elegant wine.",
      "This bright and fruit-forward wine is a delicious example of what Gamay from Beaujolais should be. Guy Breton farms all of his vineyards organically, with only indigenous yeasts used during fermentation. The Gamay is carbonically macerated and aged on its lees, leading way to a layered palate of bright red fruit.",
      "This Columbia Valley red blend is a stellar example of what Bordeaux blends from Washington State can do. The assemblage of 57% Cabernet Sauvignon, 34% Merlot, 8% Cabernet Franc, and a mere 1% Malbec creates a full-bodied yet utterly smooth wine, bursting with flavors of ripe blackberries and figs. Well-integrated tannins leave the wine feeling silky on the palate, with an ageing potential of up to 10 years.",
      "There’s no better wine for a cold or rainy night than Graham’s 10 Year Tawny Port. The wine is a blend of both older and younger wines, with an average age of 10 years. Older wines bring complex, layered flavors of caramel to the blend, while the younger wines bring bright fruit and zesty acidity to the mix. The result is a copper-colored wine full of nutty caramel flavors, rich and gentle on the palate, with a lasting finish.",
      "Indigenous to northwestern Spain, the Mencia grape thrives in the granite and slate soils of Galicia, specifically in the Bierzo and Valdeorras regions. A Portela Mencia comes from high-elevation vines, all tended organically, producing a bright wine with meaty yet fruit-forward characteristics. Cold soaking prior to fermentation followed by ageing in stainless steel produces this bold yet easy drinking wine that remains authentic to the true characteristics of the Mencia grape.",
      "Yes, this is a Nebbiolo from California, and yes, you are going to love it. Made by Jim Clendenen, a winemaker who has become known for outstanding Pinot Noir under the Au Bon Climat label, this Nebbiolo has flown a bit under the radar. We think it may be one of the best wines he makes. It’s also typical of Nebbiolo; you’ll find aromas of roses and cherries, with deep dark fruit, bright acidity, and tannins on the palate.",
      "This is a wine that completely changed our minds about Napa. It’s balanced, low in alcohol, and absolutely incredible with a steak. This wine illustrates why Napa became known for Cabernet in the first place.",
      "This wine, hailing from the Venetian Lagoon, might seem pricey, but it’s well worth it. Flavors of almonds abound as this orange wine opens up and becomes something beautiful and serious at the same time.",
      "This is one of Syrah’s purest forms, plain and simple. Earthy red fruit flavors and hints of cracked black pepper make this wine a knockout.",
      "This bottle is Champagne the way Champagne is supposed to be. Lots of yeast and flowers on the nose and incredibly rich and light at the same time; this bottle is absolutely beautiful.",
      "This funky, South African red is nothing short of a pleasant surprise. It’s super light, easy-drinking, and fantastically fruity. Serve lightly chilled for an even better experience.",
      "Farella’s expression of Merlot from Coombsville is exactly what varietal wine from this appellation should be: supple, smooth, and slightly herbaceous. Soft, juicy plum fruit flavors make this wine exceptionally easy to drink.",
      "If you ever wanted to know what wine made by the sea tastes like (trust us, you do!), this is the bottle to reach for. The wine tastes briny and refreshing, and it smells of the ocean.",
      "Soave is that refreshing, complex white wine that many more people should be drinking, and this bottle is the perfect example.",
      "For those interested in yellow wine, this bottle is essentially vin jaune without the vin jaune price tag. Nutty, oxidized flavors come together to form a smooth, persistent palate of bruised apple and honey. A delicious find from the Jura.",
      "Crisp citrus flavors with a strong mineral presence make this one of our favorite domestic Sauvignon Blancs on the market. Grapefruit nuances and bright acidity present as a vibrant, zesty choice.",
      "This Tuscan Sangiovese pours a gorgeous ruby red in the glass, with delicious aromas of ripe berries that carry over to the palate and mix with notes of rose petal and herb. An absolute must for Italian wine lovers.",
      "Some might call this Gamay from the Loire a natural wine. It’s definitely super drinkable, with a light amount of carbonic acid present.",
      "An age-worthy Bordeaux from a vineyard that isn’t part of the 1855 classification but should be. Still, because it’s been left outside the designation, you get this bottle for a steal.",
      "This rich, full-bodied Champagne presents delicious, creamy flavors of stone fruit and toast. Persistent, delicate bubbles lead to a long-lasting finish. Fun fact: Every bottle ages three to six years on its lees, followed by disgorgement by hand.",
      "This floral, fruity sparkler is an ideal example of just how unique and special the Molinara grape is. Often left in the shadows of its other Valpolicella blending components, the grape absolutely shines in this bottle of bubbles.",
      "This juicy Chenin Blanc from the Loire Valley bursts with crisp apple flavors. Bright acidity and lightness on the palate make this wine incredibly easy-drinking. A true crowd-pleaser.",
      "This is what high-quality prosecco should taste like: a creamy texture balanced by an extremely fresh and light acidity.",
      "This 100 percent Tempranillo from Ribera del Duero packs a mean punch of flavor and intensity. The palate presents savory, meaty characteristics with well-integrated tannins that lead to a persistent finish. Pair with a juicy steak for a mouthwatering, gastronomical experience.",
      "Unlike many New Zealand Sauvignon Blancs that can be aggressive and weighty, this medium-bodied, mineral-driven example is insanely drinkable, with a beautiful balance of bell pepper notes and clean floral notes.",
      "This is a completely unexpected bottle of Bordeaux. Light and insanely drinkable, the wine goes through partial carbonic maceration and is biodynamic to boot!",
      "This bottle is an extremely well-balanced Pinot Noir with bright acidity from Chile.",
      "One of the only Chenin Blancs produced in New York State, this wine is extremely fresh, with juicy stone-fruit characteristics.",
      "This is an incredibly drinkable Provencal red with flavors of ripe berries and herbal notes.",
      "Technically an orange wine, this is a great bottle to taste if you’re looking to experience a quaffable, skin-contact white.",
      "A solid Bordeaux blend from Mendoza, Argentina.",
      "Zesty acidity and bright stone fruit make this wine extremely reminiscent of Chablis.",
      "Light-bodied and pleasant with earthy notes, this wine should be slightly chilled and served as an aperitif.",
      "A unique sparkling Shiraz from Australia, this wine is ripe, juicy, and extremely fun.",
      "This wine is a mouthwatering, fruit-forward rosé from Virginia.",
      "This  strongly balanced wine presents blackberry and pepper notes with a striking acidity, making it great with food.",
      "This wine is a solid example of what the Cab Franc varietal can do on the North Fork.",
      "This wine is basically Santorini in a bottle: stunning, unique, and delicious.",
      "Certified organic from the Douro Valley, this ruby style comes with succulent, warming flavors of ripe black fruit.",
      "Concentrated Syrah/Malbec blend from California, this one is full-bodied, luscious, and extremely silky.",
      "This interesting medium-bodied Pinot Noir from the Rheinhessen has strong coffee and mineral notes.",
      "This orange wine is made from 100 percent old vine Macabeo. It has lots of spicy garrigue notes and is aged 10 years in barrel. It’s really a once-in-a-lifetime experience at an affordable price.",
      "A solid domestic Pinot with notes of cherry, leather, and wood at an affordable price.",
      "A Burgundian-style Chardonnay with lots of Old-World influence.",
      "This amber wine from Oregon has hints of orange peel and acacia.",
      "Full-bodied and juicy, this is exactly what you hope a California Zin will taste like, at a great price point, too."]
    end

    def description(index)
      puts @description_list[index]
      #binding.pry
    end

  end
end
