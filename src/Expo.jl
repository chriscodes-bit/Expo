
module Expo

using Plots

function save_graph(f;
    xrange=(-5, 5),
    yrange=(-5, 5),
    filename="graph.pdf",
    label="",
    title="",
    xlabel="x",
    ylabel="y",
    xticks=0:1:10,
    yticks=0:1:10,
    grid=true,
    points=[]
)
    p = plot(
        f,
        xrange[1],
        xrange[2],
        ylims=yrange,
        label=label,
        title=title,
        xlabel=xlabel,
        ylabel=ylabel,
        xticks=xticks,
        yticks=yticks,
        linewidth=2,
        grid=grid,
        framestyle=:origin,
        legend=(!isempty(label)),
        size=(800, 600)
    )

    for (name, x) in points
        y = f(x)
        displayed_y = round(y, digits=2)

        scatter!(p, [x], [y], label="")
        annotate!(p, x, y, text("$name($x|$displayed_y)", 12, :bottom))
    end

    savefig(p, filename)
    return p
end

end
