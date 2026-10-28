
% Square
% square(Side, Area, Perimeter)

square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% Rectangle
% rectangle(Width, Height, Area, Perimeter)

rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

% Triangle
% triangle(Base, Height, Side1, Side2, Side3,
%          Area, Perimeter)

triangle(Base, Height, Side1, Side2, Side3,
         Area, Perimeter) :-
    Area is Base * Height / 2,
    Perimeter is Side1 + Side2 + Side3.
