NAME		= get_next_line.a

SRC_DIR		= src
INC_DIR		= include

SRCS		= get_next_line.c get_next_line_utils.c
SRCS_BONUS	= get_next_line_bonus.c get_next_line_utils_bonus.c

OBJS		= $(addprefix $(SRC_DIR)/, $(SRCS:.c=.o))
OBJS_BONUS	= $(addprefix $(SRC_DIR)/, $(SRCS_BONUS:.c=.o))

CC			= cc
CFLAGS		= -Wall -Wextra -Werror -I$(INC_DIR)
AR			= ar rcs
RM			= rm -f

# Rules
all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

bonus: $(OBJS_BONUS)
	$(AR) $(NAME) $(OBJS_BONUS)

clean:
	$(RM) $(OBJS) $(OBJS_BONUS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re

