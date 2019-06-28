import sys
import time
import ftd2xx as ftd
import numpy as np
from matplotlib import pyplot as plt


def frame_read(d):
    while True:
        s = d.read(50000)
        start = s.find(b'\xF5\xAA')
        if(start >= 0):
            end = s.find(b'\xF5\xAA', start + 2)
            # print("Got frame, start: {}, end: {}, len: {}".format(
            #     start, end, end-start))
        else:
            continue
            # exit("not found")
        s = s[start + 2:end]

        ret = []
        for i in range(int(len(s) / 2)):
            i16 = s[i * 2] * 256 + s[i * 2 + 1] - 0x8000
            if((s[i * 2] & 0xF0) != 0):
                ret.append(ret[i - 1])
            else:
                ret.append(i16)

        if(len(ret) == 10868 / 2):
            return ret


def moving_average(a, n=3):
    ret = np.cumsum(a, dtype=float)
    ret[n:] = ret[n:] - ret[:-n]
    return ret[n - 1:] / n


d = ftd.open(0)    # Open first FTDI device
print(d.getDeviceInfo())

data = frame_read(d)
data.reverse()

print("i16 max {}, min {}, avg {}".format(
    max(data), min(data), sum(data) / len(data)))

with open('data.txt', 'a+') as f:
    for v in data:
        f.write(str(v) + "\n")

plt.plot(moving_average(data, 3))
plt.show()
