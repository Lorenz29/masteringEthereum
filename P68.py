## Example 4-1 Page 68 of Mastering Ethereum

p = 2**256 - 2**32 - 2**9 - 2**8 - 2**7 - 2**6 - 2**4 - 1;
x = 49790390825249384486033144355916864607616083520101638681403973749255924539515;
y = 59574132161899900045862086493921015780032175291755807399284007721050341297360;
z = (x ** 3 + 7 - y**2) % p;
print(z);