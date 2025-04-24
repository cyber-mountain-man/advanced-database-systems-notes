# 🧠 Database Design Process Checklist

Use this checklist during conceptual, logical, and physical design phases to ensure strong foundations and data integrity in your database systems.

---

## ✅ Business Rules

- [x] Properly document and verify all business rules with end users.
- [x] Ensure that all business rules are written precisely, clearly, and simply.
- [x] Use business rules to help identify entities, attributes, relationships, and constraints.
- [x] Identify the source of each business rule.
- [x] Ensure each business rule is justified, dated, and signed off by an approving authority.

---

## 🧱 Data Modeling

### 🔤 Naming Conventions
- [x] All names should be limited in length (based on DBMS limits).

### 🧾 Entity Names
- [x] Should be nouns familiar to the business and short but meaningful.
- [x] Should document abbreviations, synonyms, and aliases for each entity.
- [x] Should be unique within the model.
- [x] For composite entities, may include a combination of abbreviated entity names.

### 🏷️ Attribute Names
- [x] Should be unique within the entity.
- [x] Should use the entity abbreviation as a prefix.
- [x] Should be descriptive of the characteristic.
- [x] Should use suffixes such as `_ID`, `_NUM`, or `_CODE` for PK attributes.
- [x] Should not be a reserved word.
- [x] Should not contain spaces or special characters such as @, !, or &.

### 🔁 Relationship Names
- [x] Should be active or passive verbs that clearly indicate the nature of the relationship.

---

## 🧩 Entities

- [x] Each entity should represent a single subject.
- [x] Each entity should represent a set of distinguishable instances.
- [x] All entities should be in 3NF or higher (justify if below 3NF).
- [x] The granularity of the entity should be clearly defined.
- [x] Primary keys should be clearly defined and support the selected data granularity.

---

## 📌 Attributes

- [x] Should be simple and single-valued (atomic data).
- [x] Should document default values, constraints, synonyms, and aliases.
- [x] Derived attributes should be clearly identified and include source(s).
- [x] Should not be redundant unless justified by performance or historical accuracy.
- [x] Non-key attributes must be fully dependent on the primary key.

---

## 🔗 Relationships

- [x] Should clearly identify relationship participants.
- [x] Should clearly define participation, connectivity, and document cardinality.

---

## 🧱 ER Model

- [x] Should be validated against expected processes (inserts, updates, deletes).
- [x] Should evaluate where, when, and how to maintain a history (if needed).
- [x] Should not contain redundant relationships unless justified (see Attributes).
- [x] Should minimize data redundancy to ensure single-place updates.
- [x] Should conform to the minimal data rule:  
  **"All that is needed is there, and all there is should be needed."**
