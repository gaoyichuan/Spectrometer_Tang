import sys
import time
import ftd2xx as ftd
from matplotlib import pyplot as plt


def ft_read(d, nbytes):
    s = d.read(nbytes)
    return [ord(c) for c in s] if type(s) is str else list(s)


d = ftd.open(0)    # Open first FTDI device
print(d.getDeviceInfo())

length = 20000  # int(sys.argv[1])
x = range(0, length)

while True:
    data = ft_read(d, length)
    with open('data_normal.raw', 'wb') as f:
        f.write(bytes(data))

    u16data = []
    start = 0

    while(not (data[start] == 0xF5 and data[start + 1] == 0xAA)):
        if(start < len(data) - 1):
            start += 1
        else:
            print("Start mark not found")
            continue

    start += 2

    for i in range(0, int((length - start)/2)):
        u16 = data[i * 2] + data[i * 2 + 1] * 256
        if(u16 != 0xF5AA):
            u16data.append(u16)
        else:
            break

    if(len(u16data) < 3000 or len(u16data) > 4000):
        print("Data length {} mismatch".format(len(u16data)))
        with open('lengths.txt', 'a+') as f:
            f.write(str(len(u16data)) + "\n")
        continue

plt.plot(range(0, len(u16data)), u16data)

plt.show()
