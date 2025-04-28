# 📚 SQL Labs – Chapter 3 (TinyCollegeDB)

This folder contains starter SQL Server practice exercises aligned with *Advanced Database Systems: Design, Implementation, and Management* (Coronel & Morris).

All queries operate on the **TinyCollegeDB** database and are designed to build foundational SQL skills progressively.

---

## 🧪 Exercise List

| File | Description |
|:-----|:------------|
| `01-select-basics.sql` | Basic `SELECT` statements to retrieve all or specific columns. |
| `02-where-conditions.sql` | Filtering results using `WHERE` clauses. |
| `03-order-by.sql` | Sorting results using `ORDER BY`. |
| `04-distinct-values.sql` | Finding unique values with `DISTINCT`. |
| `05-basic-functions.sql` | Using aggregate functions like `COUNT()`, `AVG()`, `MAX()`. |
| `06-group-by-aggregates.sql` | Summarizing data with `GROUP BY`. |
| `07-inner-join.sql` | Combining rows from multiple tables using `INNER JOIN`. |
| `08-left-join.sql` | Retrieving unmatched rows using `LEFT JOIN`. |
| `09-subqueries.sql` | Using subqueries to filter or compare results. |
| `10-insert-update-delete.sql` | Practicing `INSERT`, `UPDATE`, and `DELETE` operations safely. |

---

## 🛠 Setup Requirements

- Microsoft SQL Server
- SSMS (SQL Server Management Studio)
- `TinyCollegeDB` database loaded with tables from Chapter 3 textbook files.

---

## 💡 Notes

- All table and column names follow the TinyCollege schema exactly.
- Refresh IntelliSense (`Ctrl + Shift + R`) in SSMS after creating tables.
- Run scripts progressively to build confidence before attempting more complex joins or subqueries.

---

## 📌 Reminder

> Always double-check that you are **using the correct database** (`TinyCollegeDB`) before executing queries.

```sql
USE TinyCollegeDB;
GO