# lexicographically-smallest-string
IBM Hackerrank - Lexicographically Smallest String

**Given a string `s` that consists of lowercase English letters, select exactly one non-empty substring of `s` and replace each character of it with the previous character of the English alphabet. For example, `b` is converted to `a`, `c` is converted to `b`, and `a` is converted to `z`.**

**Find the lexicographically smallest string that can be obtained after performing the above operation exactly once.**

### **Example**
```python
s = "hackerrank"
```

| Select | New string   |
|--------|--------------|
| h      | gackerrank   |
| ha     | gzckerrank   |
| err    | hackdqqlank  |

**Select and change only the first character. Return `"gackerrank"`, the lexicographically smallest string possible.**

---

**Function Description**

Complete the function `getSmallestString` in the editor below.

`getSmallestString` has the following parameter:

- `s`: a string

**Return**

- `string`: the lexicographically smallest string possible

**Constraints**

- \( 1 \leq |s| \leq 10^5 \)