include("../src/Expo.jl")

using .Expo

f(x) = 2^x
Expo.save_graph(
    f;
    xrange=(-10, 10),
    yrange=(0, 100),
    xticks=-10:1:20,
    yticks=0:10:100,
    ylabel="y",
    xlabel="x",
    filename="output/pres1.svg",
    title="f(x) = 2^x",
)
g(x) = 2^x+2
Expo.save_graph(
    g;
    xrange=(-10, 10),
    yrange=(0, 100),
    xticks=-10:2:20,
    yticks=0:2:100,
    ylabel="y",
    xlabel="x",
    filename="output/pres2.svg",
    title="f(x) = 2^x+3",
)

h(x) = 2^(x-2)
Expo.save_graph(
    h;
    xrange=(-10, 10),
    yrange=(0, 100),
    xticks=-10:1:10,
    yticks=0:5:100,
    xlabel="x",
    ylabel="y",
    filename="output/pres3.svg",
    title="f(x) = 2^(x-2)",
)

i(x) = 0.5*3^(x+2)-7
Expo.save_graph(
    i;
    xrange=(-10, 10),
    yrange=(-10, 100),
    xticks=-10:1:10,
    yticks=-10:5:100,
    xlabel="x",
    ylabel="y",
    filename="output/pres4.svg",
    title="f(x) = 0,5*3^(x+2)-7",
)