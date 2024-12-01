1--
SELECT DISTINCT rb.cust_name FROM restBill rb JOIN restRoom_management rm ON rb.table_no = rm.room_name JOIN restStaff rs ON rm.headwaiter = rs.staff_no WHERE rb.bill_total > 450.00 AND rs.first_name = 'Charles';

2--
SELECT rs.first_name, rs.surname FROM restStaff rs JOIN restRoom_management rm ON rs.staff_no = rm.headwaiter JOIN restBill rb ON rm.room_name = (SELECT r.room_name FROM restRest_table r WHERE rb.table_no = r.table_no)WHERE rb.cust_name = 'Nerida Smith' AND rb.bill_date = 160111;

3--
SELECT rb.cust_name FROM restBill rb WHERE rb.bill_total = (SELECT MIN(bill_total) FROM restBill);

4--
SELECT rs.first_name, rs.surname FROM restStaff rs WHERE rs.staff_no NOT IN (SELECT waiter_no FROM restBill);

5--
SELECT rb.cust_name, rs.first_name AS headwaiter_name, rs.surname AS headwaiter_surname, rm.room_name FROM restBill rb JOIN restRoom_management rm ON rb.table_no IN (SELECT table_no FROM restRest_table WHERE rm.room_name = room_name)JOIN restStaff rs ON rm.headwaiter = rs.staff_no WHERE rb.bill_total = (SELECT MAX(bill_total) FROM restBill);
