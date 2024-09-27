## [1729. Find Followers Count](https://leetcode.com/problems/find-followers-count/)

### Easy

---

#### SQL Schema

**Table: `Followers`**

| Column Name | Type |
|-------------|------|
| user_id     | int  |
| follower_id | int  |

---

Write a solution that will, for each user, return the number of followers.

Return the result table ordered by `user_id` in ascending order.

### Example 1:

**Input:** 

**Followers** table:

| user_id | follower_id |
|---------|-------------|
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

**Output:** 

| user_id | followers_count |
|---------|-----------------|
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

**Explanation:** 
- The followers of 0 are {1}.
- The followers of 1 are {0}.
- The followers of 2 are {0, 1}.
