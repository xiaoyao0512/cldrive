__kernel void A(__global double* a, __global double* b, __global double* c, int d, int e, int f, int g, int h, int i) {
  int j, k;

  k = get_global_id(1) + h;
  j = get_global_id(0) + d;
  if (k >= i || j >= e)
    return;

  __global double(*l)[12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] = (__global double(*)[12 / 2 * 2 + 1][12 / 2 * 2 + 1][5])a;
  __global double(*m)[12 + 2] = (__global double(*)[12 + 2])b;
  __global double(*n)[12 + 2] = (__global double(*)[12 + 2])c;

  m[k][j] = 0.40e+00 * (l[k][f][j][4] - 0.50 * (l[k][f][j][1] * l[k][f][j][1] + l[k][f][j][2] * l[k][f][j][2] + l[k][f][j][3] * l[k][f][j][3]) / l[k][f][j][0]);

  n[k][j] = 0.40e+00 * (l[k][g - 1][j][4] - 0.50 * (l[k][g - 1][j][1] * l[k][g - 1][j][1] + l[k][g - 1][j][2] * l[k][g - 1][j][2] + l[k][g - 1][j][3] * l[k][g - 1][j][3]) / l[k][g - 1][j][0]);
}
