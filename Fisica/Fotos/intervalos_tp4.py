import matplotlib.pyplot as plt
from matplotlib import ticker

# figure settings
figure_width = 15 # cm
figure_height = 5 # cm
left_right_margin = 1 # cm
top_bottom_margin = 1 # cm

# Don't change
left   = left_right_margin / figure_width # Percentage from height
bottom = top_bottom_margin / figure_height # Percentage from height
width  = 1 - left*2
height = 1 - bottom*2
cm2inch = 1/2.54 # inch per cm

def setup(ax, title):
    """Set up common parameters for the Axes in the example."""
    # only show the bottom spine
    ax.yaxis.set_major_locator(ticker.NullLocator())
    ax.spines[['left', 'right', 'top']].set_visible(False)

    # define tick positions
    ax.xaxis.set_major_locator(ticker.MultipleLocator(0.1))
    ax.xaxis.set_minor_locator(ticker.MultipleLocator(0.01))

    ax.xaxis.set_ticks_position('bottom')
    ax.tick_params(which='major', width=1.00, length=5)
    ax.tick_params(which='minor', width=0.75, length=2.5, labelsize=10)
    ax.set_xlim(0, 0.3)
    ax.set_ylim(0, 1)

    ax.text(0.0, 0.2, title, transform=ax.transAxes,
            fontsize=14, fontname='Monospace', color='tab:blue')
    ax.xaxis.set_major_formatter(major_formatter)



@ticker.FuncFormatter
def major_formatter(x, pos):
    return f'{x:.2f}'

cm = 1/2.54

fig0, axs0 = plt.subplots(2, 1, figsize=(figure_width*cm2inch,figure_height*cm2inch))
fig0.suptitle('Intervalos de Mediciones')


setup(axs0[0], title="Metodo 1")
setup(axs0[1], title="Metodo 2")



axs0[0].plot([0.15,0.25],[0,0], '-o', linewidth='10', c='r', clip_on=False, alpha=0.7, solid_capstyle="projecting")
axs0[1].plot([0.18, 0.22],[0,0], '-o', linewidth='10', clip_on=False, alpha=0.7, solid_capstyle="projecting")

fig0.tight_layout()

plt.show()
plt.xlim(0, figure_width * width)
plt.ylim(0, figure_height * height)
# fig0.tight_layout()
fig0.savefig("intervalos_tp4.png",)