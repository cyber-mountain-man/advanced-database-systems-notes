# 📘 Chapter 3: The Relational Database Model ✅ (Based on Textbook)

> 📖 Based on: *Chapter 3 – The Relational Database Model* from **Advanced Database Systems: Design, Implementation, and Management**
> (Carlos Coronel & Steven Morris, 14th Edition)

## 🎯 Learning Objectives

- Understand the logical structure of relational databases.
- Define and apply relational terminology (relation, tuple, attribute).
- Distinguish between key types: superkey, candidate key, primary key, foreign key.
- Explain and apply entity integrity and referential integrity rules.
- Explore relational algebra operations and their use.
- Understand system catalogs and their purpose in a DBMS.
- Describe different relationship types: 1:M, 1:1, M:N.
- Understand data redundancy and the use of indexes.
- Learn Codd’s 12 Rules for relational database systems.

---

## 🧾 Key Terms

- **Relation**: A table composed of rows (tuples) and columns (attributes).
- **Tuple**: A single row in a table.
- **Attribute**: A column representing a property of the entity.
- **Superkey**: A set of attributes that uniquely identifies a row.
- **Candidate Key**: A minimal superkey.
- **Primary Key (PK)**: The selected candidate key used to uniquely identify each row.
- **Foreign Key (FK)**: An attribute that matches a primary key in another relation.
- **Secondary Key**: An attribute used for data retrieval purposes (not necessarily unique).
- **Data Dictionary / System Catalog**: Metadata repository within a DBMS.

---

## 🔐 Integrity Rules

### ✅ Entity Integrity
- Each table must have a primary key.
- The PK value cannot be null.

### 🔗 Referential Integrity
- A FK must match an existing PK in the related table or be null.
- Prevents orphan records in child tables.

---

## 🔍 Relationship Types

| Type    | Description                     |
|---------|---------------------------------|
| 1:1     | One row in A ↔ one row in B     |
| 1:M     | One row in A → many rows in B   |
| M:N     | Many rows in A ↔ many in B (requires bridge table) |

---

## 🧮 Relational Algebra (Section 3-4)

| Operation   | Description                        |
|-------------|------------------------------------|
| **SELECT (σ)** | Filters rows based on a condition |
| **PROJECT (π)** | Selects specific columns          |
| **JOIN**       | Combines rows from two tables     |
| **UNION**      | Combines rows from two sets (no duplicates) |
| **INTERSECT**  | Returns common rows               |
| **DIFFERENCE** | Returns rows in A not in B        |
| **PRODUCT (×)**| Cartesian product of two relations |

---

## 📚 Table Characteristics

- Rows represent **entities (tuples)**.
- Columns represent **attributes**.
- Each table must have a **primary key**.
- Tables should support **data independence** and avoid **redundancy**.

---

## 🧠 Study Questions

1. What distinguishes a superkey from a candidate key?
2. What conditions must be met for entity integrity?
3. How does referential integrity prevent data anomalies?
4. Why is relational algebra important in DBMS?
5. What purpose does the system catalog serve?
6. When and why is a bridge table needed?

---

## 📌 Codd’s 12 Rules (Section 3-9)

> Dr. E.F. Codd proposed 12 rules to define what a true relational database must follow. Most modern RDBMS follow many (but not all) of them.

| Rule # | Name                        | Description |
|--------|-----------------------------|-------------|
| 1      | Information Rule            | All data must be stored in tables as values. |
| 2      | Guaranteed Access Rule      | Each data value must be accessible using a combination of table name, primary key, and column name. |
| 3      | Systematic Treatment of Nulls | Nulls must be uniformly handled (not as zero, blank, or default). |
| 4      | Dynamic Online Catalog      | The database structure must be stored in tables and accessible using standard tools (i.e., system catalog). |
| 5      | Comprehensive Data Sublanguage Rule | The system must support at least one language that can define, manipulate, and control access to data (e.g., SQL). |
| 6      | View Updating Rule          | All theoretically updatable views must be updatable in practice. |
| 7      | High-Level Insert, Update, and Delete | Must support set-level operations (not just row-by-row). |
| 8      | Physical Data Independence  | Changes to physical storage do not require changes to applications. |
| 9      | Logical Data Independence   | Changes to logical structure (tables, columns) do not affect the application. |
| 10     | Integrity Independence      | Integrity constraints must be stored in the catalog, not in application code. |
| 11     | Distribution Independence   | The system should work regardless of physical data distribution across locations. |
| 12     | Nonsubversion Rule          | Low-level access should not bypass integrity rules or security. |

> 📌 Note: No commercial RDBMS fully satisfies all 12 rules — but the more it complies, the more "relational" it is.
---

## 🔗 Related Resources

- [Relational Model in DBMS – GeeksforGeeks](https://www.geeksforgeeks.org/relational-model-in-dbms/)
- ERD / Relational Algebra Practice (TBD)

---

## 🧪 Practice Datasets

Chapter 3 includes a wide variety of sample datasets to explore relationships, keys, and relational algebra.

Each dataset is available in:
- `.mdb` (Microsoft Access)
- `_MySQL.txt`
- `_ORA.txt`
- `_SQL.txt`

### Dataset Names Include:
- `AviaCo`, `BeneCo`, `CheapCo`, `CollegeQue`, `CollegeTry`, `InsureCo`
- `Museum`, `NoComp`, `Relational_DB_Operators`, `SaleCo`, `StoreCo`
- `Theater`, `TinyCollege`, `TransCo`, `VendingCo`

🗂️ Available under:
- `datasets/sqlserver/`
- `datasets/mysql/`
- `datasets/oracle/`
- `datasets/access/`

> 💡 Use these to practice creating tables, inserting data, and applying relational operations like JOIN, PROJECT, and SELECT.

