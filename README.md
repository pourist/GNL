```markdown
# 📄 get_next_line

> 42 project to implement a function that reads a line from a file descriptor.  
> Handles memory allocation, static storage, and supports multiple file descriptors (bonus).

---

## 🧠 Description

The goal of this project is to implement the `get_next_line` function, which reads from a file descriptor one line at a time.

The function should return:
- A line ending with `\n`, or
- The last line if EOF is reached without a newline, or
- `NULL` if nothing is left to read or an error occurs.

This function must handle partial reads using a user-defined `BUFFER_SIZE` and manage memory efficiently with static variables.

In the bonus version, the function must work with multiple file descriptors at the same time, preserving their states independently.

---

## 💡 Prototype

```c
char *get_next_line(int fd);
```

- **fd:** File descriptor to read from.
- **Return:** A line read from `fd`, including the newline character if present.

---

## 🧰 Usage

### Compile with Makefile

```bash
make        # Compile mandatory version
make bonus  # Compile bonus version (multi-fd)
```

### Use in your project

```c
#include "get_next_line.h"            // or get_next_line_bonus.h
```

Compile with:

```bash
cc -Wall -Wextra -Werror -D BUFFER_SIZE=42 \
	src/get_next_line.c src/get_next_line_utils.c \
	-o gnl_test
```

Or for bonus:

```bash
cc -Wall -Wextra -Werror -D BUFFER_SIZE=42 \
	src/get_next_line_bonus.c src/get_next_line_utils_bonus.c \
	-o gnl_bonus_test
```

---

## 🗂 File Structure

```
.
├── include/
│   ├── get_next_line.h
│   └── get_next_line_bonus.h
├── src/
│   ├── get_next_line.c
│   ├── get_next_line_utils.c
│   ├── get_next_line_bonus.c
│   └── get_next_line_utils_bonus.c
├── Makefile
└── README.md
```

---

## 🌟 Bonus

✅ Supports reading from multiple file descriptors simultaneously  
✅ One static variable per file descriptor  
✅ Fully memory-safe  
✅ Norm-compliant

---

## ⚠️ Constraints

- No use of `lseek`, `read` only.
- No global variables.
- No use of `libft`.
- Memory must be freed properly.
- Must compile with or without `-D BUFFER_SIZE`.

---

## 👨‍💻 Author

**Pouriya Pourbahrami**  
42 Berlin  
[github.com/pourist](https://github.com/pourist)

```
