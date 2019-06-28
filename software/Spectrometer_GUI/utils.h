#ifndef UTILS_H
#define UTILS_H

#include <cstdint>
#include <cstdlib>

int movingAvg(int16_t *ptrArrNumbers, int64_t *ptrSum, uint32_t pos, uint32_t len, int16_t nextNum);
void bufferMovingAvg(double *arr, double *ret, uint32_t size, uint32_t window);

#endif // UTILS_H
