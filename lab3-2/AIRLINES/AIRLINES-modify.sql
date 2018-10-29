/* Edward Kesicki
   ekesicki@calpoly.edu

   Victor Wei
   vywei@calpoly.edu
*/

/*Remove from flights db all flights except for those to and from AKI*/
DELETE FROM flights
    WHERE SourceAirport != 'AKI' AND DestAirport != 'AKI';


/*For all flights NOT operated by Continental, AirTran or Virgin, increase the
flight numberby 2000 (this will ensure that after the corporate takeover,
flight numbers are still unique).*/
UPDATE flights
SET FlightNo = FlightNo + 2000
WHERE Airline != 7 AND Airline != 10 AND Airline != 12;

/*For all pairs of flights to/from AKI NOT operated by Continental, AirTran,
or Virgin, flip the flight numbers.*/
/*move odds aside*/
UPDATE flights
SET FlightNo = IF(MOD(FlightNo,2)=1, FlightNo*-1, FlightNo);
/*increment evens*/
UPDATE flights
SET FlightNo = IF(MOD(FlightNo,2)=0, FlightNo+1, FlightNo);
/*correct then decrement odds*/
UPDATE flights
SET FlightNo = IF(FlightNo<0,(FlightNo*-1)-1, FlightNo);


/*Replace the airline for all flights to and from AKI except for AirTran and
Virgin with Continental.*/
UPDATE flights
SET Airline = 7
WHERE Airline != 10 AND Airline != 12;

SELECT *
FROM flights
ORDER BY Airline, FlightNo;
