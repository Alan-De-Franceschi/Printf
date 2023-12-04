# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ade-fran <ade-fran@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/23 14:27:11 by ade-fran          #+#    #+#              #
#    Updated: 2023/11/23 14:27:13 by ade-fran         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

LIBFT_DIR = libft/

LIBFT = libft.a

MY_SOURCES = ft_printf.c

MY_OBJECTS = $(MY_SOURCES:.c=.o)

HEADER = ft_printf.h

CFLAGS = -Wall -Wextra -Werror

CC = cc

all: $(NAME)

$(NAME): $(MY_OBJECTS)
	make -C $(LIBFT_DIR)
	cp libft/libft.a $(NAME)
	ar -rcs $(NAME) $(MY_OBJECTS)

clean:
	make fclean -C $(LIBFT_DIR)
	rm -f $(MY_OBJECTS)

fclean:
	make fclean -C $(LIBFT_DIR)
	rm -f $(NAME) $(MY_OBJECTS)

re: fclean all

.PHONY: fclean clean all re
