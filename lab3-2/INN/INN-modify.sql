/*
Victor Wei - vywei@calpoly.edu
Eddie Kesicki - ekesicki@calpoly.edu
*/

/* add a description attribute to the room table */
ALTER TABLE Rooms
    ADD roomDescription VARCHAR (280);
/* give each room a descripton*/
UPDATE Rooms 
    SET roomDescription = "For strong-willed guests who appreciate their privacy! A room with sparse decor on the highest floor of the building."
    WHERE roomName = "Recluse and defiance";

UPDATE Rooms 
    SET roomDescription = "For those whom desire a warm welcome for a short stay! Our room nearest the entrance for a short social stay."
    WHERE roomName = "Interim but salutary";

UPDATE Rooms 
    SET roomDescription = "Perfect for a last minute vacation in comfort! Traditional decor with a cozy atmosphere for those who need to get away."
    WHERE roomName = "Abscond or bolster";

UPDATE Rooms 
    SET roomDescription = "A modern room with a mysterious aura. A room hidden deep within the inn, but worth every twist and turn to find it."
    WHERE roomName = "Mendicant with cryptic";

UPDATE Rooms 
    SET roomDescription = "For our geusts who plan to leave a legacy behind. A modern room with a beautiful sunrise view, and blackout curtains for sleeping in."
    WHERE roomName = "Harbinger but bequest";

UPDATE Rooms 
    SET roomDescription = "For guests who appreciate simpler decor with an eye to simpler times. A room adjacent to the inn with a rustic feeling."
    WHERE roomName = "Immutable before decorum";

UPDATE Rooms 
    SET roomDescription = "A room for guests who appreciate comfort and don't wish to break the bank. Our most affordable and most modern room available."
    WHERE roomName = "Thrift and accolade";

UPDATE Rooms 
    SET roomDescription = "A room for guests with a sense of purpose and pride. Red-themed room with a sunset view to accentuate the decorations."
    WHERE roomName = "Convoke and sanguine";

UPDATE Rooms 
    SET roomDescription = "Our room for puzzlemasters and lovers of brain teasers! Room is full of jigsaw puzzles and books of brain teasers for guests to mull over."
    WHERE roomName = "Riddle to exculpate";

UPDATE Rooms 
    SET roomDescription = "Our nicest room fit for guests who choose to vacation in style. Features a canopied bed annd bayview windows for those who appreciate the finer things in life."
    WHERE roomName = "Frugal not apropos";

    