# Chapter 4.3

# CDF of a Gaussian mixture

## Julia code to generate the PDF and CDF
using Distributions
using Plots

gmm = MixtureModel(Normal[Normal(0, 1), Normal(5, 1),], [0.3, 0.7])

p1 = plot(x -> 0, -5, 1, fillrange= x->pdf(gmm, x), 
    linealpha=0, fillcolor=RGB(0.8, 0.8, 1), alpha=0.5, label=false) # style
plot!(p1, x -> pdf(gmm, x), -5, 10, 
    color=1, linewidth=6, label="PDF") # style

p2 = plot(x -> cdf(gmm, x), -5, 10, 
    linewidth=6, label="CDF")

plot(p1, p2, layout=(1, 2), 
    size=(600, 300), legend=:topleft)


##
# CDF of a uniform random variable
using Distributions
using Plots

u = Uniform(-3, 4)

p1 = plot(x -> 0, -5:0.01:1, fillrange=x->pdf(u, x),
    linealpha=0, fillcolor=RGB(0.8, 0.8, 1), alpha=0.5, label=false)
plot!(p1, x -> pdf(u, x), -5, 10, 
    color=1, linewidth=6, ylims=(0, 0.4), label="PDF")

p2 = plot(x -> cdf(u, x), -5:0.01:10, 
    linewidth=6, label="CDF")
vline!(p2, [-3, 4], 
    linestyle=:dash, color=:green, label=false)

plot(p1, p2, layout=(1, 2), 
    size=(600, 300), legend=:topleft)

## 
# CDF of an exponential random variable
using Distributions
using Plots

u = Exponential(2)

p1 = plot(x -> 0, -5:0.01:1, fillrange=x->pdf(u, x),
    linealpha=0, fillcolor=RGB(0.8, 0.8, 1), alpha=0.5, label=false)
plot!(p1, x -> pdf(u, x), -5, 10, 
    color=1, linewidth=6, ylims=(0, 0.6), label="PDF")

p2 = plot(x -> cdf(u, x), -5:0.01:10, 
    linewidth=6, label="CDF")

plot(p1, p2, layout=(1, 2), 
    size=(600, 300), legend=:topleft)


# Chapter 4.5

# Generate a uniform random variable
using Distributions
using Plots

u = Uniform(0, 1) # same as Uniform()
X = rand(u, 1000)
histogram(X)



# Mean, variance, median, mode of a uniform random variable

# Julia code to compute empirical mean, var, median, mode
using Distributions
u = Uniform(0, 1)
X = rand(u, 1000)

M = mean(X)
V = var(X)
Med = median(X)
Mod = mode(X)


# Probability of a uniform random variable

# Julia code to compute the probability P(0.2 < X < 0.3)
using Distributions

u = Uniform(0, 1)
F = cdf(u, 0.3) - cdf(u, 0.2)


