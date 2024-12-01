1--
SELECT rs.first_name, rs.surname, rb.bill_date, COUNT(rb.bill_no) AS num_bills FROM restStaff rs JOIN restBill rb ON rs.staff_no = rb.waiter_no GROUP BY rs.first_name, rs.surname, rb.bill_date HAVING COUNT(rb.bill_no) >= 2;

2--
SELECT rt.room_name, COUNT(rt.table_no) AS num_tables FROM restRest_table rt WHERE rt.no_of_seats > 6 GROUP BY rt.room_name;

3--
SELECT rt.room_name, SUM(rb.bill_total) AS total_bills FROM restBill rb JOIN restRest_table rt ON rb.table_no = rt.table_no GROUP BY rt.room_name;

4--
SELECT rs_head.first_name AS headwaiter_name, rs_head.surname AS headwaiter_surname, SUM(rb.bill_total) AS total_bill_amount FROM restStaff rs_waiter JOIN restStaff rs_head ON rs_waiter.headwaiter = rs_head.staff_no JOIN restBill rb ON rs_waiter.staff_no = rb.waiter_no GROUP BY rs_head.first_name, rs_head.surname ORDER BY total_bill_amount DESC;

5--
SELECT rb.cust_name, AVG(rb.bill_total) AS average_spent FROM restBill rb GROUP BY rb.cust_name HAVING AVG(rb.bill_total) > 400;

6--
SELECT rs.first_name, rs.surname, rb.bill_date, COUNT(rb.bill_no) AS num_bills FROM restStaff rs JOIN restBill rb ON rs.staff_no = rb.waiter_no GROUP BY rs.first_name, rs.surname, rb.bill_date HAVING COUNT(rb.bill_no) >= 3;
