include("../src/Expo.jl")

using .Expo

f(x) = 2^x

Expo.save_graph(
    f;
    xrange=(0, 20),
    yrange=(0, 100),
    xticks=0:1:10,
    yticks=0:10:100,
    ylabel="Anzahl Bakterien",
    xlabel="Bakterienwachstum",
    filename="output/bacteria.svg",
    label="f(x) = 2^x\nMaßstab: 1 x-Einheit entspricht 20 Minuten",
    title="Zellteilung",

    points=[
        ("A", 0),
        ("B", 2),
        ("C", 4),
        ("D", 6.5)
    ]
)