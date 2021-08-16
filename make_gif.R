# SCORE

library(magick)
library(tidyverse)

imgs <-list.files(path = "output/", pattern = "png", full.names = T) 


frames <-  image_read(imgs) 


frames_rescaled <- image_scale(frames, "700")


(animacion <- image_animate(frames_rescaled, fps = 5))


image_write(animacion, "animacion.gif")
