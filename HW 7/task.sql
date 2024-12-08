--1
CREATE VIEW samsBills
AS SELECT 
    rs.first_name,
    rs.surname,
    rb.bill_date,
    rb.cust_name,
    rb.bill_total
FROM restBill rb
JOIN restStaff rs
ON rb.waiter_no = rs.staff_no
WHERE rs.first_name = 'Sam' AND rs.surname = 'Pitt';

--2
SELECT * FROM samsBills WHERE bill_total > 400;

--3
CREATE VIEW roomTotals
AS SELECT 
    rt.room_name,
    SUM(rb.bill_total) AS total_sum
FROM restBill rb
JOIN restRest_table rt
ON rb.table_no = rt.table_no
GROUP BY rt.room_name;

--4
CREATE VIEW teamTotals 
AS SELECT 
    CONCAT(h.first_name, ' ', h.surname) AS headwaiter_name,
    SUM(rb.bill_total) AS total_sum
FROM restBill rb
JOIN restStaff w ON rb.waiter_no = w.staff_no
JOIN restStaff h ON w.headwaiter = h.staff_no
GROUP BY h.first_name, h.surname;
