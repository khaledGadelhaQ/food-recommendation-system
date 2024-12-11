% Food Recoomendation System

%Define Domains
domains
	person = symbol
	cuisine = symbol
	dish = symbol

%Define Predicates
predicates
	person(symbol, symbol)
	dish(symbol, symbol)
	recommend_dish(symbol, symbol)
	
%Define facts about individuals and their cuisine preferences
clauses
	person(ali, italian).
	person(ali, chinese).
	person(khaled, egyptian).
	person(khaled, indian).
	person(sara, italian).
	person(sara, mexican).
	
%Define facts about dishes and their cuisines
dish("Pizza", italian).
dish("Pasta", italian).
dish("Tacos", mexican).
dish("Biryani", indian).
dish("Spring Rolls", chinese).
dish("Fried Rice", chinese).
dish("Koshare", egyptian).
dish("Falafel", egyptian).

% Rule for recommending dishes
recommend_dish(Person, Dish):-
	person(Person,Cuisine),
	dish(Dish, Cuisine).
	