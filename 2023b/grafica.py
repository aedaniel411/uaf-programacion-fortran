import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

# datos
x = np.arange(0, 20, 0.1)
y = np.sin(x)

# define grafica
fig = plt.figure()

# plt.plot(x, y, color="purple")


def animate(i):
    fig.clear()
    plt.plot(x[:i], y[:i], color='purple')
    plt.scatter(x[i], y[i], color='red')


# mostrar
anim = FuncAnimation(fig, animate, interval=50, frames=len(x), repeat=True)
plt.show()
