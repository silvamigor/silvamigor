# PNG com fundo transparente
png("teste_hipotese.png", width = 800, height = 500, bg = "transparent")

# Parâmetros
mu0 <- 18
mu1 <- 14
sd <- 2
xc <- 17

# Eixo x
x <- seq(8, 28, length = 1000)

# Densidades
y0 <- dnorm(x, mean = mu0, sd = sd)  # H0
y1 <- dnorm(x, mean = mu1, sd = sd)  # Ha

# Plot vazio com controle total dos eixos
plot(x, y0, type = "n", ylim = c(0, max(y0, y1)*1.1),
     xaxt = "n", yaxt = "n", xlab = "", ylab = "", main = "")

# Eixo x com apenas 14, xc e 18
axis(1, at = c(mu1, xc, mu0), labels = c("14", expression(x[c]), "18"))

# Curvas
lines(x, y0, col = "blue", lwd = 2)
lines(x, y1, col = "darkgreen", lwd = 2)

# Sombrear erro tipo I (alpha)
polygon(c(x[x < xc], xc), c(y0[x < xc], 0), col = rgb(0,0,1,0.2), border = NA)

# Sombrear erro tipo II (beta)
polygon(c(x[x >= xc], rev(x[x >= xc])), 
        c(y1[x >= xc], rep(0, sum(x >= xc))), 
        col = rgb(0, 0.5, 0, 0.2), border = NA)

# Linha vertical em xc
abline(v = xc, lty = 2)

# Rótulos das curvas (fora das curvas)
text(mu1 - 2.5, dnorm(mu1, mu1, sd)*0.8, "Sadio (Hₐ)", col = "darkgreen", cex = 1.2)
text(mu0 + 2.5, dnorm(mu0, mu0, sd)*0.8, "Doente (H₀)", col = "blue", cex = 1.2)

# Letras alpha e beta nas regiões
text(13.5, 0.015, expression(alpha), cex = 1.5)
text(19.5, 0.015, expression(beta), cex = 1.5)

dev.off()

