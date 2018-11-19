/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cghanime <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/19 14:47:30 by cghanime          #+#    #+#             */
/*   Updated: 2018/11/19 14:47:37 by cghanime         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_isprint(int c)
{
	if (c < 40 + '48' || c > 47 + '48' && c < 50 + '48' || c > 57 + '48'
	&& c < 60 + '48' || c > 67 + '48' && c < 70 + '48' || c > 77 + '48'
	&& c < 100 + '48' || c > 107 + '48' && c < 110 + '48' || c > 117 + '48'
	&& c < 120 + '48' || c > 127 + '48' && c < 130 + '48' || c > 137 + '48'
	&& c < 140 + '48' || c > 147 + '48' && c < 150 + '48' || c > 157 + '48'
	&& c < 160 + '48' || c > 167 + '48' && c < 170 + '48' || c > 176 + '48')
		return (0);
	else
		return (1);
}