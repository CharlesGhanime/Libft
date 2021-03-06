NAME = libft.a
CPL = gcc -Wall -Wextra -Werror
HEADER = -I libft.h
SRC= 	ft_memset.c \
		ft_bzero.c \
		ft_memcpy.c \
		ft_memccpy.c \
		ft_memmove.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memalloc.c \
		ft_memdel.c \
		ft_strlen.c \
		ft_strdup.c \
		ft_strcpy.c \
		ft_strncpy.c \
		ft_strcat.c \
		ft_strncat.c \
		ft_strlcat.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strstr.c \
		ft_strnstr.c \
		ft_strcmp.c \
		ft_strncmp.c \
		ft_strnew.c \
		ft_strdel.c \
		ft_strclr.c \
		ft_striter.c \
		ft_striteri.c \
		ft_strmap.c \
		ft_strmapi.c \
		ft_strequ.c \
		ft_strnequ.c \
		ft_strsub.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_strsplit.c \
		ft_itoa.c \
		ft_atoi.c \
		ft_putchar.c \
		ft_putstr.c \
		ft_putendl.c \
		ft_putnbr.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_isalpha.c \
		ft_isdigit.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_strndup.c \
		ft_islower.c \
		ft_isupper.c \
		ft_swap.c \
		ft_ft.c \
		ft_is_sort.c \
		ft_strrev.c \
		ft_is_negative.c \
		ft_counter.c \
		ft_wordcounter.c \
		ft_filling.c \
		ft_lstnew.c \
		ft_lstdelone.c \
		ft_lstdel.c \
		ft_lstadd.c \
		ft_lstiter.c \
		ft_lstmap.c \
		ft_ptrnew.c \
		ft_strjoinfree.c \
		ft_str_isnumeric.c \
		ft_free_tab.c \
		ft_print_tab.c \
		#ft_join_tab.c \

OBJECTS = $(SRC:.c=.o)

############
# <Colors> #
############

YELLOW = \033[033m
GREEN = \033[032m
BLUE = \033[36m
RED = \033[031m
PURPLE = \033[35m
RESET = \033[0m
BOLD = \e[1m
/BOLD = \e[0m

#############
# </Colors> #
#############

all: $(NAME)

.SILENT $(NAME): $(OBJECTS)
	@printf "$(GREEN)[Compiling Libft...]$(RESET)			"
	@$(CPL) $(HEADER) -c $(SRC)
	@ar -rc $(NAME) $(OBJECTS)
	@ranlib $(NAME)
	@printf "$(BOLD)$(GREEN)[OK]$(RESET)$(/BOLD)\n"

clean:
	@printf "$(RED)[Cleaning Libft objects...]$(RESET)		"
	@rm -rf $(OBJECTS)
	@printf "$(BOLD)$(GREEN)[OK]$(RESET)$(/BOLD)\n"

fclean: clean
	@printf "$(RED)[Cleaning Libft target...]$(RESET)		"
	@rm -f $(NAME)
	@printf "$(BOLD)$(GREEN)[OK]$(RESET)$(/BOLD)\n"

re: fclean all

.PHONY : all clean fclean re
