## _Traveling Salesman Problem_

In this team project you will use SQL to solve the classic Traveling Salesman Problem (TSP). You will learn to model graphs and routes, create tables with nodes and travel costs, and write queries to find the cheapest paths and analyze the results.

These skills will help you with optimization, data analysis, and building information systems—valuable in business analytics, software development, and IT infrastructure management.

💡 [Tap here](https://new.oprosso.net/p/4cb31ec3f47a4596bc758ea1861fb624) **to leave your feedback on the project**. It's anonymous and will help our team make your educational experience better. We recommend completing the survey immediately after the project.

## Contents

- [_Traveling Salesman Problem_](#traveling-salesman-problem)
- [Contents](#contents)
- [How to learn at «School 21»](#how-to-learn-at-school-21)
- [Chapter I](#chapter-i)
- [Preamble](#preamble)
- [Chapter II](#chapter-ii)
- [Rules of the day](#rules-of-the-day)
- [Chapter III](#chapter-iii)
- [Exercise 00 — Classical TSP](#exercise-00--classical-tsp)
- [Exercise 01 — Opposite TSP](#exercise-01--opposite-tsp)

## How to learn at «School 21»

- Here, you’ll find a unique learning experience with a lot of freedom. You’re given a task and left to find your own way to solve it, using whatever resources work best for you — whether that’s the Internet or AI tools like GigaChat. Just be mindful of information quality: verify, think critically, analyze, and compare.
- Peer-to-peer (P2P) learning is the exchange of knowledge and experience with peers, where everyone acts as both mentor and student. This approach allows you to gain a deeper understanding of the material by learning from one another.
- Feel free to ask for help: around you are peers who are also navigating this path for the first time. Share your own experience and ideas with others.  Join Rocket.Chat to stay updated with the latest community announcements. 
- Your learning is meaningless if you just copy someone else’s solutions. When receiving help from others, always make sure you fully understand the “why”, “how”, and “purpose” behind the solution. Don’t be afraid to make mistakes. 
- Does the task seem impossible? Take a break, get some fresh air and clear your mind — this has helped many people. Maybe after that, the solution will come to you naturally.
- The learning process is just as important as the result. It’s not just about completing the task — it’s about understanding HOW to solve it. 

How to work with the project:

- Before starting, clone the project from GitLab into a repository with the same name.
- All files should be created inside the _src/_ folder of the cloned repository.
- After cloning the project, create a _develop_ branch and do all your development there. Then, push the _develop_ branch to GitLab.
- Your directory should not contain any files other than those specified in the assignments.

## Chapter I
## Preamble

![T00_01](misc/images/T00_01.png)

Given a finite number of "cities" and the cost of travel between each pair of cities, find the cheapest way to visit all the cities and return to your starting point. (In the illustration, the Procter & Gamble company held a contest in 1962. The contest required solving a Traveling Salesman Problem (TSP) for a given set of 33 cities. There was a tie among several participants who found the optimal solution. One of the winners was an early TSP researcher, Professor Gerald Thompson from Carnegie Mellon University.)

The travel costs are symmetric in the sense that traveling from city X to city Y costs the same as traveling from city Y to city X. The "way to visit all the cities" refers simply to the order in which the cities are visited. In other words, the data consist of integer weights assigned to the edges of a finite complete graph; the goal is to find a Hamiltonian cycle (i.e., a cycle that visits each vertex exactly once and returns to the starting point) with the minimum total weight. In this context, Hamiltonian cycles are commonly called tours.

![T00_00](misc/images/T00_00.png)

The origins of the Traveling Salesman Problem (TSP) are unclear. In the 1920s, mathematician and economist Karl Menger published it among his colleagues in Vienna. In the 1930s, the problem resurfaced in mathematical circles at Princeton. In the 1940s, it was studied by statisticians (Mahalanobis (1940), Jessen (1942), Ghosh (1948), Marks (1948)) in connection with an agricultural application. The mathematician Merrill Flood later popularized it among his colleagues at the RAND Corporation. Eventually, the TSP became known as a prototype of a difficult problem in combinatorial optimization: examining all tours one by one was out of the question due to their vast number, and for a long time, no alternative solution approaches emerged.

## Chapter II
## Rules of the day

- Make sure you are using the latest version of PostgreSQL.
- It is perfectly fine if you use the IDE to write source code (aka SQL script).
- You should not leave any files in your directory other than those explicitly specified by the exercise instructions. It is recommended that you modify your `.gitignore' to avoid accidents. 
- All tasks contain a list of Allowed and Denied sections with listed database options, database types, SQL constructions etc. Please have a look at the section before you start.
- And may the SQL-Force be with you!
- Absolutely anything can be represented in SQL! Let's get started and have fun!


## Chapter III
## Exercise 00 — Classical TSP

| Exercise 00: Classical TSP|                                                                                                                          |
|---------------------------------------|--------------------------------------------------------------------------------------------------------------------------|
| Turn-in directory                     | ex00                                                                                                                     |
| Files to turn-in                      | `team00_ex00.sql` DDL for table creation with INSERTs of data; SQL DML statement                                                                                |
| **Allowed**                               |                                                                                                                          |
| Language                        | ANSI SQL|
| SQL Syntax Pattern                        | Recursive Query|

![T00_02](misc/images/T00_02.png)

This is a team project. Take a look at the Graph. 
There are 4 cities (a, b, c and d) and arcs between them with costs (or taxes). Actually, the cost is (a,b) = (b,a).

Please create a table with named nodes using structure {point1, point2, cost} and fill data based on a picture (remember there are direct and reverse paths between 2 nodes).
Please write a SQL statement that returns all tours (aka paths) with minimum travel cost if we start from city "a".
Remember, you need to find the cheapest way to visit all cities and return to your starting point. For example, the tour looks like a -> b -> c -> d -> a.

Below is an example of the output data. Please sort the data by total_cost and then by tour.

| total_cost | tour |
| ------ | ------ |
| 80 | {a,b,d,c,a} |
| ... | ... |

## Exercise 01 — Opposite TSP

| Exercise 01: Opposite TSP|                                                                                                                          |
|---------------------------------------|--------------------------------------------------------------------------------------------------------------------------|
| Turn-in directory                     | ex01                                                                                                                     |
| Files to turn-in                      | `team00_ex01.sql`     SQL DML statement                                                                             |
| **Allowed**                               |                                                                                                                          |
| Language                        | ANSI SQL|
| SQL Syntax Pattern                        | Recursive Query|

Please add a way to see additional rows with the most expensive cost to the SQL from the previous exercise. Take a look at the sample data below. Please sort the data by total_cost and then by tour.

| total_cost | tour |
| ------ | ------ |
| 80 | {a,b,d,c,a} |
| ... | ... |
| 95 | {a,d,c,b,a} |


