import matplotlib.pyplot as plt
from matplotlib import ticker

def setup(ax, title):
	ax.yaxis.set_major_locator(ticker.NullLocator())
	ax.spines[['left', 'right', 'top']].set_visible(False)

	ax.text(0.0, 0.2, title, transform=ax.transAxes,
		fontsize=14, fontname='Monospace', color='tab:blue')
	ax.set_xlim(0, 0.3)
	ax.set_ylim(0, 1)
	ax.xaxis.set_ticks_position('bottom')
	# define tick positions
	ax.xaxis.set_major_locator(ticker.MultipleLocator(0.1))
	ax.xaxis.set_minor_locator(ticker.MultipleLocator(0.01))
	ax.xaxis.set_major_formatter(ticker.ScalarFormatter())
	ax.tick_params(which='major', width=1.00, length=5)
	ax.tick_params(which='minor', width=0.75, length=2.5, labelsize=10)
	
cm = 1/2.54 

fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(15*cm,5*cm))
setup(ax1, "Metodo 1")
setup(ax2, "Metodo 2")

ax1.plot([0.15,0.25],[0,0], marker='|', linewidth='7', c='r', clip_on=False, alpha=0.7, solid_capstyle="butt")
ax2.plot([0.18, 0.22],[0,0], marker='|',  linewidth='7',	 clip_on=False, alpha=0.7, solid_capstyle="butt")


# fig.set_size_inches(6,2)

fig.savefig("intervalosV2.png")
plt.subplot_tool()
plt.show()