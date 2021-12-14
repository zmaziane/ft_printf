# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zmaziane <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/09 13:59:45 by zmaziane          #+#    #+#              #
#    Updated: 2021/12/10 16:54:25 by zmaziane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

INC = ft_printf.h

SRC =	ft_printf.c		\
		ft_putchar.c	\
		ft_puthex.c		\
		ft_putnbr.c		\
		ft_putstr.c		\
		ft_putunb.c		\


CFLAGS = -Wall -Wextra -Werror

OBJ = $(SRC:%.c=%.o)

all : $(NAME)

$(NAME) : $(OBJ) $(INC)
	gcc -c $(CFLAGS) $(SRC) -I $(INC)
	ar rc $(NAME) $(OBJ)

clean :
	rm -rf $(OBJ)

fclean : clean
	rm -rf $(NAME)

re : fclean all
