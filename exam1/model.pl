% cost(Item, Price).
cost(soda, 2).
cost(chips, 3).
cost(hot_dog, HotDogCost) :-
    cost(soda, SodaCost),
    HotDogCost is SodaCost * 2.
cost(OS, 2) :-
    office_supply(OS).
cost(cold_medicine, 7).

food(soda).
food(chips).
food(hot_dog).

office_supply(pencil).
office_supply(pen).
