#include "utils.h"

//int movingAvg(int16_t *ptrArrNumbers, int64_t *ptrSum, uint32_t pos, uint32_t len, int16_t nextNum) {
//  //Subtract the oldest number from the prev sum, add the new number
//  *ptrSum = *ptrSum - ptrArrNumbers[pos] + nextNum;
//  //Assign the nextNum to the position in the array
//  ptrArrNumbers[pos] = nextNum;
//  //return the average
//  return *ptrSum / len;
//}

//void bufferMovingAvg(int16_t *arr, int16_t *ret, uint32_t size, uint32_t window) {
//    int16_t *buffer = new int16_t[window]{0};
//    int64_t sum = 0;
//    uint32_t pos = 0;

//    for(uint32_t i = 0; i < size; i++) {
//        ret[i] = movingAvg(buffer, &sum, pos, window, arr[i]);
//        pos++;
//        if(pos >= window) {
//            pos = 0;
//        }
//    }
//}

void bufferMovingAvg(double *arr, double *ret, uint32_t size, uint32_t window) {
    double sum = 0.0;
    for(uint32_t i = 0; i < window; i++) {
        sum += arr[i];
    }
    ret[0] = sum / window;

    uint32_t j = 1;
    for(uint32_t i = window; i < size; i++) {
        sum = sum + arr[i] - arr[i - window];
        ret[j++] = sum / window;
    }
}
