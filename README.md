# CS50's Introduction to Databases with SQL
This repository contains my coursework for **[HarvardX CS50's Introduction to Databases with SQL](https://cs50.harvard.edu/sql/)**. It's a seven-week course consisting of lectures, problem sets, and a final project covering relational database design, querying, and optimization with SQLite, PostgreSQL, and MySQL.

---

## 📖 About the Course

CS50 SQL teaches how to create, read, update, and delete data with relational databases, and how to model real-world entities and their relationships using well-typed, constrained tables. The course progresses through querying, designing schemas, writing data, viewing with indexes and views, optimizing performance, and scaling databases across engines, culminating in a self-designed final project.

## 🗓️ Curriculum & What I Submitted

| Week | Lecture Topic | Problem Set | Assignments Submitted |
|------|---------------|-------------|------------------------|
| 0 | Querying | [PSet 0](https://cs50.harvard.edu/sql/2024/psets/0/) | Cyberchase · 36 Views · Players |
| 1 | Relating | [PSet 1](https://cs50.harvard.edu/sql/2024/psets/1/) | Packages, Please · DESE · Moneyball |
| 2 | Designing | [PSet 2](https://cs50.harvard.edu/sql/2024/psets/2/) | ATL · Happy to Connect · Union Square Donuts |
| 3 | Writing | [PSet 3](https://cs50.harvard.edu/sql/2024/psets/3/) | Don't Panic! · Meteorite Cleaning |
| 4 | Viewing | [PSet 4](https://cs50.harvard.edu/sql/2024/psets/4/) | Census Taker · The Private Eye · Bed and Breakfast |
| 5 | Optimizing | [PSet 5](https://cs50.harvard.edu/sql/2024/psets/5/) | In a Snap · your.harvard |
| 6 | Scaling | [PSet 6](https://cs50.harvard.edu/sql/2024/psets/6/) | Happy to Connect (Sentimental) · From the Deep · Don't Panic! (Sentimental) with Java |
| — | — | [Final Project](https://cs50.harvard.edu/sql/2024/project/) | Self-designed database: `DESIGN.md`, `schema.sql`, `queries.sql` |

## 🗂️ Repository Structure
```
.
├── lectures/
│   ├── 0-querying/
│   ├── 1-relating/
│   ├── 2-designing/
│   ├── 3-writing/
│   ├── 4-viewing/
│   ├── 5-optimizing/
│   └── 6-scaling/
├── problem-sets/
│   ├── pset0/
│   │   ├── cyberchase/
│   │   ├── 36-views/
│   │   └── players/
│   ├── pset1/
│   │   ├── packages-please/
│   │   ├── dese/
│   │   └── moneyball/
│   ├── pset2/
│   │   ├── atl/
│   │   ├── happy-to-connect/
│   │   └── union-square-donuts/
│   ├── pset3/
│   │   ├── dont-panic/
│   │   └── meteorite-cleaning/
│   ├── pset4/
│   │   ├── census-taker/
│   │   ├── the-private-eye/
│   │   └── bed-and-breakfast/
│   ├── pset5/
│   │   ├── in-a-snap/
│   │   └── your-harvard/
│   └── pset6/
│       ├── happy-to-connect-sentimental/
│       ├── from-the-deep/
│       └── scaling/
├── final-project/
│   ├── DESIGN.md
│   ├── schema.sql
│   ├── queries.sql
│   └── diagram.png
└── README.md
```

## 🛠️ Technologies Used

- **SQLite** — used throughout lectures and most problem sets
- **PostgreSQL** — used for optimizing and scaling topics
- **MySQL** — used for select exercises comparing database engines
- **DB Browser / `sqlite3` CLI** — for local development and testing

## 🚀 Running the Queries
Clone the repo and open any problem set with SQLite:

```bash
git clone https://github.com/chandanasunkara/sql-harvard-cs50.git
cd sql-harvard-cs50/problem-sets/pset3/dont-panic
sqlite3 dont-panic.db < queries.sql
```