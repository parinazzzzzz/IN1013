1--
SELECT DISTINCT rb.cust_name FROM restBill rb JOIN restRoom_management rm ON rb.table_no = rm.room_name JOIN restStaff rs ON rm.headwaiter = rs.staff_no WHERE rb.bill_total > 450.00 AND rs.first_name = 'Charles';

2--


3--


4--


5--