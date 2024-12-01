1--
SELECT DISTINCT rs.first_name, rs.surname FROM restStaff rs JOIN restBill rb ON rs.staff_no = rb.waiter_no WHERE rb.cust_name = 'Tanya Singh';

2--
SELECT rm.room_date FROM restRoom_management rm JOIN restStaff rs ON rm.headwaiter = rs.staff_no WHERE rs.first_name = 'Charles' AND rm.room_name = 'Green' AND rm.room_date BETWEEN 160201 AND 160229;

3--
SELECT DISTINCT rs.first_name, rs.surname FROM restStaff rs WHERE rs.headwaiter = (SELECT headwaiter FROM restStaff WHERE first_name = 'Zoe' AND surname = 'Ball');

4--
SELECT rb.cust_name, rb.bill_total, rs.first_name AS waiter_name, rs.surname AS waiter_surname FROM restBill rb JOIN restStaff rs ON rb.waiter_no = rs.staff_no ORDER BY rb.bill_total DESC;

5--
SELECT DISTINCT rs.first_name, rs.surname FROM restStaff rs WHERE rs.staff_no IN (SELECT waiter_no FROM restBill WHERE table_no IN (SELECT table_no FROM restBill WHERE bill_no IN (14, 17)));

6--
SELECT DISTINCT rs.first_name, rs.surname FROM restStaff rs WHERE rs.staff_no IN (SELECT waiter_no FROM restBill WHERE table_no IN (SELECT table_no FROM restRest_table WHERE room_name = 'Blue')) OR rs.staff_no = (SELECT headwaiter FROM restRoom_management WHERE room_name = 'Blue' AND room_date = 160312);
