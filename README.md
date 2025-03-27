```markdown
# 📄 get_next_line

**Get Next Line** is a 42 project focused on implementing a function that reads a file descriptor line by line.  
This function must handle memory management, file reading with buffers, and optional support for multiple file descriptors.

---

## 📦 Overview

- **Function:** `char *get_next_line(int fd);`
- **Language:** C
- **Compilation:** `-Wall -Wextra -Werror`
- **BUFFER_SIZE:** Defined at compile time with `-D BUFFER_SIZE=n`
- **Makefile Rules:** `make`, `make bonus`, `make clean`, `make fclean`, `make re`

---

## 🧠 Project Scope

### 🔹 Mandatory

- Returns the next line from a file descriptor.
- Each call reads only what is needed until `\n` or EOF.
- Uses a static variable to store leftover data between calls.
- Must return `NULL` when nothing is left to read or on error.
- Files:
  - `get_next_line.c`
  - `get_next_line_utils.c`
  - `get_next_line.h`

### 🔸 Bonus

- Supports reading from multiple file descriptors simultaneously.
- Uses only one static variable per fd.
- Files:
  - `get_next_line_bonus.c`
  - `get_next_line_utils_bonus.c`
  - `get_next_line_bonus.h`

---

## 📁 File Structure

```
.
├── include/
│   ├── get_next_line.h
│   └── get_next_line_bonus.h
└── src/
    ├── get_next_line.c
    ├── get_next_line_utils.c
    ├── get_next_line_bonus.c
    └── get_next_line_utils_bonus.c
```

---

## ⚙️ Compilation

### Compile with default BUFFER_SIZE

```bash
make
```

### Compile with bonus (multi-fd support)

```bash
make bonus
```

### Example manual build

```bash
cc -Wall -Wextra -Werror -D BUFFER_SIZE=42 \
    src/get_next_line.c src/get_next_line_utils.c \
    -Iinclude -o gnl_test
```

---

## 🧪 Example Usage

```c
#include "get_next_line.h"
#include <fcntl.h>
#include <stdio.h>

int main(void)
{
	int fd = open("file.txt", O_RDONLY);
	char *line;

	while ((line = get_next_line(fd)))
	{
		printf("%s", line);
		free(line);
	}
	close(fd);
	return 0;
}
```

---

## ⚠️ Notes

- You are **not allowed to use libft**.
- `lseek` and global variables are **forbidden**.
- Your function should work with `BUFFER_SIZE` values from `1` to `9999+`.

---

## 👨‍💻 Author

**Pouriya Pourbahrami**  
42 Berlin  
[github.com/pourist](https://github.com/pourist)
```

---
