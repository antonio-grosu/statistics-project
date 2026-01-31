
library(ggplot2)

set.seed(123)

# Metoda acceptare respingere


N <- 1000 # 1000 de puncte 
x_square <- runif(N, min = -1, max = 1) # in patratul [-1, 1]
y_square <- runif(N, min = -1, max = 1)

#distanta fata de origine
distanta <- sqrt(x_square^2 + y_square^2)

# conditia de acceptare 
# daca distanta de la (0,0) pana la (x,y) <= 1 atunci punctul se afla in cerc
acceptat <- distanta <= 1 

#data frame pentru plotare
df_respingere <- data.frame(
  x = x_square,
  y = y_square,
  Tip = ifelse(acceptat, "Interior (Acceptat)", "Exterior (Respins)"),
  Dist = distanta
)


p1 <- ggplot(df_respingere, aes(x = x, y = y, color = Tip)) +
  geom_point(alpha = 0.6) +
  #cercul unitate pentru referinta
  annotate("path",
           x = cos(seq(0, 2*pi, length.out = 100)),
           y = sin(seq(0, 2*pi, length.out = 100)),
           color = "black", size = 1) +
  coord_fixed() #pastreaza aspectul de cerc
  scale_color_manual(values = c("red", "blue")) +
  theme_minimal() +
  labs(title = "Metoda 1: Acceptare-Respingere",
       subtitle = "Puncte generate uniform in patrat [-1, 1]",
       x = "X", y = "Y")

print(p1)

#3
# Luam doar punctele acceptate 
puncte_disc <- df_respingere[df_respingere$Tip == "Interior (Acceptat)", ]
media_empirica <- mean(puncte_disc$Dist)
media_teoretica <- 2/3

cat(" Rezultate Metoda 1 \n")
cat("Numar puncte acceptate:", nrow(puncte_disc), "\n")
cat("Media distantei (Empiric):", round(media_empirica, 4), "\n")
cat("Media distantei (Teoretic):", round(media_teoretica, 4), "\n")

cat("Eroare absoluta:", abs(media_empirica - media_teoretica), "\n\n")


# Metoda cu coordonate polare

# Generam N puncte DIRECT in disc
# Theta uniform pe [0, 2pi]
theta <- runif(N, 0, 2*pi)


# daca folosesc doar runif(N, 0, 1), punctele se aglomereaza  in centru
r <- sqrt(runif(N, 0, 1)) 

# Conversia in cartezian
x_polar <- r * cos(theta)
y_polar <- r * sin(theta)

df_polar <- data.frame(x = x_polar, y = y_polar)

p2 <- ggplot(df_polar, aes(x = x, y = y)) +
  geom_point(color = "darkgreen", alpha = 0.6) +
  annotate("path",
           x = cos(seq(0, 2*pi, length.out = 100)),
           y = sin(seq(0, 2*pi, length.out = 100)),
           color = "black", size = 1) +
  coord_fixed(xlim = c(-1, 1), ylim = c(-1, 1)) +
  theme_minimal() +
  labs(title = "Metoda 2: Coordonate Polare",
       x = "X", y = "Y")

print(p2)

