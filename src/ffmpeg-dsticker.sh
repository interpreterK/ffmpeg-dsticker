#!/bin/bash

echo -n "Enter the gif name (Make sure to be in the correct directory): "
read gif_loc

echo -n "Enter an output name: "
read output_nameNowe 

ffmpeg -i $gif_loc \
	-filter_complex "[0:v] scale=270:266, split [a][b]; [a] palettegen=reserve_transparent=on:transparency_color=ffffff [p]; [b][p] paletteuse" \
	-plays 0 \
	$output_name.png

echo -n "Note: the output file will be \".png\" (apng)."