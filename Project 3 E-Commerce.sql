# E - Commerce Project Queries
CREATE DATABASE E_COM USE E_COM

SELECT * FROM E_Commerce

/count of/

SELECT COUNT(ORDER_ID) FROM E_COMMERCE

/Count of order id/

SELECT COUNT(Row_ID) from E_commerce

/count ship mode wise/

SELECT COUNT(SHIP_MODE) FROM E_COMMERCE WHERE SHIP_MODE = 'First Class' /1538/

SELECT COUNT(SHIP_MODE) FROM E_COMMERCE WHERE SHIP_MODE = 'Same Day' /543/

SELECT COUNT(SHIP_MODE) FROM E_COMMERCE WHERE SHIP_MODE = 'Second Class' /1945/

SELECT COUNT(SHIP_MODE) FROM E_COMMERCE WHERE SHIP_MODE = 'Standard Class' /5968/

/count of segment wise/

SELECT COUNT(SEGMENT) FROM E_Commerce WHERE Segment = 'Consumer' /5191/

SELECT COUNT(SEGMENT) FROM E_Commerce WHERE Segment = 'Corporate' /3020/

SELECT COUNT(SEGMENT) FROM E_Commerce WHERE Segment = 'Home Office' /1783/

/state wise count/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Alabama' /61/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Arizona' /224/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Arkansas'/60/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'California' /2001/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Colorado' /182/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Connecticut' /82/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Delaware' /96/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'District Of Columbia' /10/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Florida' /383/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Georgia' /184/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Idaho' /21/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Indiana' /149/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'iowa' /30/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Kansas' /24/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Kentucky' /139/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Louisiana' /42/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Maine' /8/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Maryland' /105/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Massachusetts' /135/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Michigan' /255/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Minnesota' /89/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Mississippi' /53/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Missouri' /66/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Montana' /15/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Nebraska' /38/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Nevada' /39/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'New Hampshire' /27/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'New Jersey' /130/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'New Mexico' /37/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'New York' /1128/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'North Carolina' /249/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'North Dakota' /7/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Ohio' /469/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Oklahoma' /66/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Oregon' /124/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Pennsylvania' /587/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Rhode Island' /56/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'South carolina' /42/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'South Dakota' /12/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Tennessee' /183/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Texas' /985/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Utah' /53/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Vermont' /11/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Virginia' /224/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Washington' /506/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'West Virginia' /4/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Wisconsin' /110/

SELECT COUNT(STATE) FROM E_Commerce WHERE STATE = 'Wyoming' /1/

/* region wise*/

SELECT COUNT(Region) FROM E_Commerce WHERE Region = 'Central' /2323/

SELECT COUNT(Region) FROM E_Commerce WHERE Region = 'East'/2848/

SELECT COUNT(Region) FROM E_Commerce WHERE Region = 'South' /1620/

SELECT COUNT(Region) FROM E_Commerce WHERE Region = 'West'/3203/

/category wise/

SELECT count(CATEGORY) FROM E_Commerce WHERE Category = 'Furniture' /2121/

SELECT count(CATEGORY) FROM E_Commerce WHERE Category = 'Office Supplies' /6026/

SELECT count(CATEGORY) FROM E_Commerce WHERE Category = 'Technology' /1847/

/analyse by sub-category/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Accessories'/775/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Appliances'/466/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Art'/796/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Binders'/1523/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Bookcases'/228/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Chairs'/617/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Copiers'/68/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Envelopes' /254/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Fasteners'/217/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Furnishings'/957/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Labels'/364/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Machines'/115/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Paper'/1370/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Phones'/889/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Storage'/846/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Supplies'/190/

SELECT COUNT(Sub_Category) FROM E_Commerce WHERE Sub_Category = 'Tables'/319/

SELECT Category,Sub_Category FROM E_Commerce WHERE Category = 'Technology' /1847/

SELECT Category,Sub_Category FROM E_Commerce WHERE Category = 'Technology' AND Sub_Category = 'Machines' /115/

SELECT Category,Sub_Category FROM E_Commerce WHERE Category = 'Technology' AND Sub_Category = 'Copiers' /68/

SELECT Category,Sub_Category FROM E_Commerce WHERE Category = 'Technology' AND Sub_Category = 'Accessories' /775/

SELECT Category,Sub_Category FROM E_Commerce WHERE Category = 'Technology' AND Sub_Category = 'Phones' /889/

/machines are highly sold in 2016/

SELECT count(Sub_category) FROM E_Commerce WHERE Sub_Category = 'Machines'AND YEAR(Ship_Date) = 2016
