include("../src/Expo.jl")

using .Expo

f(x) = 100 * 0.5^x

Expo.save_graph(
    f;
    xrange=(0, 10, :1),
    xticks=0:1:10,
    ylabel="mg",
    xlabel="Zeiteinheiten",
    filename="output/pills.svg",
    label="f(x) = 100 * 0.5^x\nMaßstab: 1x-Einheit entspricht 4 Stunden",
    title="Halbwertszeit Graph"
)