import matplotlib.pyplot as plt
import numpy as np


def van_der_corput(n, base=2):
    """Generate the nth point in the van der Corput sequence"""
    result = 0.0
    f = 1.0 / base
    i = n
    while i > 0:
        result += f * (i % base)
        i //= base
        f /= base
    return result

colormap = plt.get_cmap("viridis")

for i in range(0,16):
  r, g, b, _ = np.array(colormap(i/8.0))
  print("\\definecolor{skill%d}{rgb}{%f, %f, %f}" % (i, r, g, b))

r, g, b, _ = np.array(colormap(2.0))

print("\\definecolor{skill2}{rgb}{%f, %f, %f}" % (r,g,b))
