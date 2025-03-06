create database vaividya;
use vaividya;
select * from zomato where location="Banashankari" having online_order = "Yes" and book_table="Yes";

select name,listed_in_type from zomato where rate>=4.5;

select name,rest_type from zomato where location="Bannerghatta Road" and approx_cost_for_two_people >=800;

select name, rate as rating, rest_type, location from zomato where location="Bannerghatta Road" and approx_cost_for_two_people between 500 and 800;

select * from zomato order by votes desc limit 1;

select name, rest_type, menu_item from zomato where location="Banashankari" and votes>500 and not menu_item="notAvailable";

select * from zomato order by votes desc, rate desc limit 5;

select * from zomato where cuisines like "%Continental%"  order by votes desc, rate desc limit 5;

select name, location, cuisines, rate, votes, approx_cost_for_two_people, listed_in_type from zomato order by approx_cost_for_two_people desc, rate desc, votes desc limit 5;

select name ,reviews_list from zomato where substring(reviews_list,7,3)>3.5;

select name,rate,votes from zomato where rest_type like "%Casual Dining%" order by votes desc, rate desc limit 5;

select name, location, rate, Discount from zomato where Discount>30 order by discount desc, rate desc;

select name from zomato where location="banashankari" and catering="yes";

select name from zomato where rest_type like "%Cafe%" and payMode like "%CreditCard%" or payMode like  "%Paytm%";

select name from zomato where rest_type like "%Dessert Parlor%" and capacity >100 order by capacity desc,rate desc,votes desc;

select * from zomato where catering="yes" and payMode like "%Cash%" and discount>40 and not menu_item="notAvailable";

select * from zomato where online_order="Yes" and book_table="Yes" and payMode like "%PhonePe%";

select * from zomato where rest_type like "%Bar%" or "%Pub%" and discount >40;

select * from zomato where listed_in_type="Dine-out" and menu_item like "%Dosa%";

select name,url, address, phone from zomato where location ="Banashankari" and menu_item like "%Veg%" and approx_cost_for_two_people<=800 and payMode like "%Paytm%";
 