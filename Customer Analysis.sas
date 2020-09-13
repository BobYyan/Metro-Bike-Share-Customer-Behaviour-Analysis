LIBNAME ORION BASE "C:\Users\xinxinyan\Documents\My SAS\OrionDB";

/**Trip Analysis**/
proc sql;
title "One Way";
select count(trip_route_category) "One Way"
from orion.data_of_all
where trip_route_category = "One Way";
quit;
title;

proc sql;
title "Round Trip";
select count(trip_route_category) "Round Trip"
from orion.data_of_all
where trip_route_category = "Round Trip";
quit;
title;

proc sql;
title "Routes Change by Month in 2016";
select month(start_date) as month "Month", count(trip_route_category) as one_way "One Way"
from orion.'2016_q3'n
where trip_route_category = "One Way"
group by month;
quit;
title;

proc sql;
title "Routes Change by Month in 2016";
select month(start_date) as month "Month", count(trip_route_category) "Round Trip"
from orion.'2016_q3'n
where trip_route_category = "Round Trip"
group by month;
quit;
title;

proc sql;
title "Routes Change by Month in 2016";
select month(start_date) as month "Month", count(trip_route_category) as one_way "One Way"
from orion.'2016_q4'n
where trip_route_category = "One Way"
group by month;
quit;
title;

proc sql;
title "Routes Change by Month in 2016";
select month(start_date) as month "Month", count(trip_route_category) "Round Trip"
from orion.'2016_q4'n
where trip_route_category = "Round Trip"
group by month;
quit;
title;

proc sql;
title "Routes Change by Month in 2017";
select month(start_date) as month "Month", count(trip_route_category) as one_way "One Way"
from orion.data_of_all
where trip_route_category = "One Way"
and year(start_date) = 2017
group by month;
quit;
title;

proc sql;
title "Routes Change by Month in 2017";
select month(start_date) as month "Month", count(trip_route_category) "Round Trip"
from orion.data_of_all
where trip_route_category = "Round Trip"
and year(start_date) = 2017
group by month;
quit;
title;

proc sql;
title "Routes Change by Month in 2018";
select month(start_date) as month "Month", count(trip_route_category) as one_way "One Way"
from orion.data_of_all
where trip_route_category = "One Way"
and year(start_date) = 2018
group by month;
quit;
title;

proc sql;
title "Routes Change by Month in 2018";
select month(start_date) as month "Month", count(trip_route_category) "Round Trip"
from orion.data_of_all
where trip_route_category = "Round Trip"
and year(start_date) = 2018
group by month;
quit;
title;

proc sql;
title "Routes Change by Month in 2019";
select month(start_date) as month "Month", count(trip_route_category) as one_way "One Way"
from orion.data_of_all
where trip_route_category = "One Way"
and year(start_date) = 2019
group by month;
quit;
title;

proc sql;
title "Routes Change by Month in 2019";
select month(start_date) as month "Month", count(trip_route_category) "Round Trip"
from orion.data_of_all
where trip_route_category = "Round Trip"
and year(start_date) = 2019
group by month;
quit;
title;

proc sql;
title "Travel Times of Different Passholder Types 2016";
select passholder_type "Passholder Type", count(trip_route_category) "One Way"
from orion.data_of_all
where trip_route_category = "One Way"
and year(start_date) = 2016
group by passholder_type;
quit;
title;

proc sql;
title "Travel Times of Different Passholder Types 2016";
select passholder_type "Passholder Type", count(trip_route_category) "Round Trip"
from orion.data_of_all
where trip_route_category = "Round Trip"
and year(start_date) = 2016
group by passholder_type;
quit;
title;

proc sql;
title "Travel Times of Different Passholder Types 2017";
select passholder_type "Passholder Type", count(trip_route_category) "One Way"
from orion.data_of_all
where trip_route_category = "One Way"
and year(start_date) = 2017
group by passholder_type;
quit;
title;

proc sql;
title "Travel Times of Different Passholder Types 2017";
select passholder_type "Passholder Type", count(trip_route_category) "Round Trip"
from orion.data_of_all
where trip_route_category = "Round Trip"
and year(start_date) = 2017
group by passholder_type;
quit;
title;

proc sql;
title "Travel Times of Different Passholder Types 2018";
select passholder_type "Passholder Type", count(trip_route_category) "One Way"
from orion.data_of_all
where trip_route_category = "One Way"
and year(start_date) = 2018
group by passholder_type;
quit;
title;

proc sql;
title "Travel Times of Different Passholder Types 2018";
select passholder_type "Passholder Type", count(trip_route_category) "Round Trip"
from orion.data_of_all
where trip_route_category = "Round Trip"
and year(start_date) = 2018
group by passholder_type;
quit;
title;

proc sql;
title "Travel Times of Different Passholder Types 2019";
select passholder_type "Passholder Type", count(trip_route_category) "One Way"
from orion.data_of_all
where trip_route_category = "One Way"
and year(start_date) = 2019
group by passholder_type;
quit;
title;

proc sql;
title "Travel Times of Different Passholder Types 2019";
select passholder_type "Passholder Type", count(trip_route_category) "Round Trip"
from orion.data_of_all
where trip_route_category = "Round Trip"
and year(start_date) = 2019
group by passholder_type;
quit;
title;

proc sql;
title "Average Trip Duration of Different Passholder Types";
select passholder_type "Passholder Type", sum(duration)/count(trip_id) "Average Trip Duration"
from orion.data_of_all
group by passholder_type;
quit;
title;

/**Customer Analysis: Weekday and Weekend Trip Analysis**/
proc sql;
title "Total Trips in Different Hours Weekday";
select hour(start_time) as daytime "Hour", count(trip_id) "Total Trips"
from orion.data_of_all
where weekday(start_date) ^= 1
and weekday(start_date) ^= 7
group by daytime;
quit;
title;

proc sql;
title "Total Trips in Different Hours Weekend";
select hour(start_time) as daytime "Hour", count(trip_id) "Total Trips"
from orion.data_of_all
where weekday(start_date) = 1
or weekday(start_date) = 7
group by daytime;
quit;
title;

proc sql;
title "Average Duration in Different Hours Weekday";
select hour(start_time) as daytime "Hour", sum(duration)/count(trip_id) "Average Duration" format=4.1
from orion.data_of_all
where weekday(start_date) ^= 1
and weekday(start_date) ^= 7
and duration ^= 1440
group by daytime;
quit;
title;

proc sql;
title "Average Duration in Different Hours Weekend";
select hour(start_time) as daytime "Hour", sum(duration)/count(trip_id) "Average Duration" format=4.1
from orion.data_of_all
where weekday(start_date) = 1
or weekday(start_date) = 7
and duration ^= 1440
group by daytime;
quit;
title;

/**Station Analysis: Top 10 Stations in Peak Hours**/
proc sql;
title "Top 10 Stations at 9 Weekday";
select start_station "Station", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 1
and weekday(start_date) ^= 7
and hour(start_time) = 9
group by start_station
order by trips desc;
quit;
title;

proc sql;
title "Passholder Types of Top 10 Stations at 9 Weekday";
select start_station "Station", passholder_type "Passholder Type", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 1
and weekday(start_date) ^= 7
and hour(start_time) = 9
and start_station = 3034
group by start_station, passholder_type;
quit;
title;

proc sql;
title "Top 10 Stations at 13 Weekday";
select start_station "Station", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 1
and weekday(start_date) ^= 7
and hour(start_time) = 13
group by start_station
order by trips desc;
quit;
title;

proc sql;
title "Passholder Types of Top 10 Stations at 13 Weekday";
select start_station "Station", passholder_type "Passholder Type", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 1
and weekday(start_date) ^= 7
and hour(start_time) = 13
and start_station = 3030
group by start_station, passholder_type;
quit;
title;

proc sql;
title "Top 10 Stations at 18 Weekday";
select start_station "Station", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 1
and weekday(start_date) ^= 7
and hour(start_time) = 18
group by start_station
order by trips desc;
quit;
title;

proc sql;
title "Passholder Types of Top 10 Stations at 18 Weekday";
select start_station "Station", passholder_type "Passholder Type", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 1
and weekday(start_date) ^= 7
and hour(start_time) = 18
and start_station = 3068
group by start_station, passholder_type;
quit;
title;

proc sql;
title "Top 10 Stations at 14 Weekend";
select start_station "Station", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 2
and weekday(start_date) ^= 3
and weekday(start_date) ^= 4
and weekday(start_date) ^= 5
and weekday(start_date) ^= 6
and hour(start_time) = 14
group by start_station
order by trips desc;
quit;
title;

proc sql;
title "Passholder Types of Top 10 Stations at 14 Weekend";
select start_station "Station", passholder_type "Passholder Type", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 2
and weekday(start_date) ^= 3
and weekday(start_date) ^= 4
and weekday(start_date) ^= 5
and weekday(start_date) ^= 6
and hour(start_time) = 14
and start_station = 3069
group by start_station, passholder_type;
quit;
title;

proc sql;
title "Top 10 Stations at 15 Weekend";
select start_station "Station", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 2
and weekday(start_date) ^= 3
and weekday(start_date) ^= 4
and weekday(start_date) ^= 5
and weekday(start_date) ^= 6
and hour(start_time) = 15
group by start_station
order by trips desc;
quit;
title;

proc sql;
title "Passholder Types of Top 10 Stations at 15 Weekend";
select start_station "Station", passholder_type "Passholder Type", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 2
and weekday(start_date) ^= 3
and weekday(start_date) ^= 4
and weekday(start_date) ^= 5
and weekday(start_date) ^= 6
and hour(start_time) = 15
and start_station = 4210
group by start_station, passholder_type;
quit;
title;

proc sql;
title "Top 10 Stations at 16 Weekend";
select start_station "Station", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 2
and weekday(start_date) ^= 3
and weekday(start_date) ^= 4
and weekday(start_date) ^= 5
and weekday(start_date) ^= 6
and hour(start_time) = 16
group by start_station
order by trips desc;
quit;
title;

proc sql;
title "Passholder Types of Top 10 Stations at 16 Weekend";
select start_station "Station", passholder_type "Passholder Type", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 2
and weekday(start_date) ^= 3
and weekday(start_date) ^= 4
and weekday(start_date) ^= 5
and weekday(start_date) ^= 6
and hour(start_time) = 16
and start_station = 3082
group by start_station, passholder_type;
quit;
title;

proc sql;
title "test";
select start_station, start_lat, start_lon
from orion.data_of_all
where start_station = 3005
group by start_station, start_lat, start_lon;
quit;
title;

proc sql;
title "Passholder Types at 8 Weekday";
select passholder_type "passholder_type", count(trip_id) as trips "Trips"
from orion.data_of_all
where weekday(start_date) ^= 1
and weekday(start_date) ^= 7
and hour(start_time) = 8
group by passholder_type;
quit;
title;