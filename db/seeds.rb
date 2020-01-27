users_list = [
    {name: "Rick Rosetti", username: "admin", email: "rick@test.com", password: "Testing123!"},
    {name: "Malcom Reynolds", username: "capt_mal", email: "malcom@test.com", password: "test"},
    {name: "Jayne Cobb", username: "jaynec", email: "jayne@test.com", password: "test"}
]

users_list.each do |params|
    @user = User.new(params)
    @user.save
end

styles_list = [
    {name: "Amber Ale", description: "The name of the style is an indication of its malt profile, which is based on simple pale malt but features medium to dark crystal malts to provide color, caramel flavor, and a moderate initial sweetness."},
    {name: "American Pale Ale", description: "Deceptively simple recipe of pale malt, caramel malt, and one or more American hops, fermented with a clean ale yeast, yields a beautiful pint with various fruit aromas and flavors, a gently sweet caramel malt foundation, and a dry, moderately bitter finish."},
    {name: "Brown Ale", description: "Modern Brown Ales are a 20th century development. While brown ales have been enjoyed in England since well before 1900, the modern interpretation of the style bears little resemblance to those historical beers. The current iteration of English Brown Ale is a fairly mild beer with caramel-focused malt flavor that lacks the roastiness of Porters and Stouts."},
    {name: "Hefeweizen", description: "Wheat focused ale with a lightly bready flavor profile and a fluffy mouthfeel.  Low hop character, with dominant notes of banana and clove flavors typically define the style."},
    {name: "India Pale Ale", description: "IPA is the most popular style in craft beer, and doesn’t look to be giving up its spot any time soon. Hops are still what define the spiritual center of American craft brewing, and IPA is the flagship style for this ingredient.  The one consistent, defining trait of all these styles is the supremacy of hops in their sensory profile."},
    {name: "Kolsch", description: "Kolsch originates in, and takes its name from, the city of Köln (Cologne) in west Germany. The easy-drinking style is brewed with ale yeast at cooler-than-normal temperatures, and then lagered, or cold-conditioned, for several weeks. What results is a sort of honorary lager with subtle ale yeast fruitiness.  Hop rates are generally low to keep the beer approachable."},
    {name: "Pilsner", description: "Pilsner styles of beer originate from Bohemia in the Czech Republic. They are medium- to medium-full bodied and are characterized by high carbonation and tangy Czech varieties of hops that impart floral aromas and a crisp, bitter finish. German pilsner styles are similar, though often slightly lighter in body and color. The hallmark of a fresh pilsner is the dense, white head. The alcohol levels must be such as to give a rounded mouthfeel, typically around 5 percent ABV. Classic pilsners are thoroughly refreshing, but they are delicate and must be fresh to show their best."},
    {name: "Porter", description: "Today’s porters are generally ruby-black to deep brown in color, with chocolaty, caramel or licorice notes.  For sheer versatility, porters are hard to beat, offering sturdiness on the one hand, drinkablility on the other. They can be the epitome of balance, or a dark, bitter beer for hop lovers. The range of flavors in porter is almost unparalleled for a beer of modest means. Soothing enough for cold weather, modest enough for warm, porters may still take a back seat to stout, but they occupy the driver’s seat for many."},
    {name: "Saison & Farmhouse Ale", description: "Saisons and Farmhouse Ales have found tremendous popularity in the last few years as consumers continue to seek greater authenticity and proximity (or the appearance of such) in the production of their food and drink. The best examples are both rustic and refined, balancing expressive yeast character and moderate hopping with a dry, quenching finish."},
    {name: "Sour", description: "Sours may range widely in terms of sweetness and hop character, with the primary feature being an acidic or citric sour flavor.  The sour flavor is typically produced during fermentation by the use of various microorganisms."},
    {name: "Stout", description: "Most people who take the plunge into the dark side of beer exploration are surprised to find out that stouts are neither heavy nor terribly strong. Quite the opposite is true in fact: many great stouts are complex and low in alcohol, with beautiful roundness and a touch of roastiness. The dry versions are appetizing and quenching; the sweeter styles are silky and well rounded, perfect for an evening of food and drink."}
]

styles_list.each do |params|
    @style = Style.new(params)
    @style.save
end

beers_list = [
    {name: "Fat Tire", brand: "New Belgium", style_id: 1},
    {name: "Bells Amber Ale", brand: "Bells", style_id: 1},
    {name: "Zombie Duest", brand: "Three Floyds", style_id: 2},
    {name: "Hop Trip", brand: "Deschutes", style_id: 2},
    {name: "Maduro", brand: "Cigar City Brewing", style_id: 3},
    {name: "Moose Drool", brand: "Big Sky Brewing", style_id: 3},
    {name: "Hacker-Pschorr Weisse", brand: "Hacker-Pschorr", style_id: 4},
    {name: "Paulaner Hefeweizen", brand: "Paulaner", style_id: 4},
    {name: "Sculpin", brand: "Ballast Point Brewing", style_id: 5},
    {name: "Jai Alai", brand: "Cigar City Brewing", style_id: 5},
    {name: "Princess Yum Yum", brand: "Denver Beer Company", style_id: 6},
    {name: "Mistral", brand: "Three Floyds", style_id: 6},
    {name: "Pilsner Urquell", brand: "Pilsner Urquell Brewery", style_id: 7},
    {name: "Yellow Snow", brand: "Rogue Ales & Spirits", style_id: 7},
    {name: "Black Butte", brand: "Deschutes", style_id: 8},
    {name: "Anchor Porter", brand: "Anchor Brewing", style_id: 8},
    {name: "Collette", brand: "Great Divide", style_id: 9},
    {name: "Tropic King", brand: "Funkwerks", style_id: 9},
    {name: "Sour Rose", brand: "Crooked Stave", style_id: 10},
    {name: "Apricot Sour", brand: "Dry Dock", style_id: 10},
    {name: "Guinness", brand: "Guinness Brewing", style_id: 11},
    {name: "Ten Fidy", brand: "Oskar Blues", style_id: 11}
]

beers_list.each do |params|
    @beer = Beer.new(params)
    @beer.save
end

reviews_list = [
    {user_id: 1, beer_id: 10, five_star_rating: 5, content: "Fantastic example of a traditional IPA.  Strong hoppy flavor with floral and citrus notes."},
    {user_id: 2, beer_id: 1, five_star_rating: 3, content: "New Belgium is a solid brewery but there are better beers in the verse"}
]

reviews_list.each do |params|
    @review = Review.new(params)
    @review.save
end

