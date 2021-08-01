__kernel void A(__global const double* a, __global const double* b, __global const double* c, __global const double* d, __global const double* e, __global const double* f, __global const double* g, __global double* h, int i, int j, int k) {
  int l, m, n, o;
  double p[5];
  double q[5], r[5], s[5], t[5];
  double u[5] = {0.0, 0.0, 0.0, 0.0, 0.0};
  double v, w, x;
  double y, z, aa;
  double ab, ac, ad;
  double ae, af, ag;
  double ah, ai, aj;
  double ak, al, am;

  n = get_global_id(1) + 1;
  l = get_global_id(0) + 1;
  if (n > (k - 2) || l > (i - 2))
    return;

  __global double(*an)[12 / 2 * 2 + 1][12 / 2 * 2 + 1] = (__global double(*)[12 / 2 * 2 + 1][12 / 2 * 2 + 1])b;
  __global double(*ao)[12 / 2 * 2 + 1][12 / 2 * 2 + 1] = (__global double(*)[12 / 2 * 2 + 1][12 / 2 * 2 + 1])c;
  __global double(*ap)[12 / 2 * 2 + 1][12 / 2 * 2 + 1] = (__global double(*)[12 / 2 * 2 + 1][12 / 2 * 2 + 1])d;
  __global double(*aq)[12 / 2 * 2 + 1][12 / 2 * 2 + 1] = (__global double(*)[12 / 2 * 2 + 1][12 / 2 * 2 + 1])e;
  __global double(*ar)[12 / 2 * 2 + 1][12 / 2 * 2 + 1] = (__global double(*)[12 / 2 * 2 + 1][12 / 2 * 2 + 1])f;
  __global double(*as)[12 / 2 * 2 + 1][12 / 2 * 2 + 1] = (__global double(*)[12 / 2 * 2 + 1][12 / 2 * 2 + 1])g;
  __global double(*at)[12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] = (__global double(*)[12 / 2 * 2 + 1][12 / 2 * 2 + 1][5])a;
  __global double(*au)[12 / 2 * 2 + 1][12 / 2 * 2 + 1][5] = (__global double(*)[12 / 2 * 2 + 1][12 / 2 * 2 + 1][5])h;

  q[0] = at[n][0][l][0];
  q[1] = at[n][0][l][1];
  q[2] = at[n][0][l][2];
  q[3] = at[n][0][l][3];
  q[4] = at[n][0][l][4];
  r[0] = at[n][1][l][0];
  r[1] = at[n][1][l][1];
  r[2] = at[n][1][l][2];
  r[3] = at[n][1][l][3];
  r[4] = at[n][1][l][4];
  s[0] = at[n][2][l][0];
  s[1] = at[n][2][l][1];
  s[2] = at[n][2][l][2];
  s[3] = at[n][2][l][3];
  s[4] = at[n][2][l][4];

  v = an[n][0][l];
  w = an[n][1][l];
  y = ao[n][0][l];
  z = ao[n][1][l];
  ab = ap[n][0][l];
  ac = ap[n][1][l];
  ae = aq[n][0][l];
  af = aq[n][1][l];
  ah = ar[n][0][l];
  ai = ar[n][1][l];
  ak = as[n][0][l];
  al = as[n][1][l];
  m = 1;
  t[0] = u[0];
  t[1] = u[1];
  t[2] = u[2];
  t[3] = u[3];
  t[4] = u[4];
  u[0] = q[0];
  u[1] = q[1];
  u[2] = q[2];
  u[3] = q[3];
  u[4] = q[4];
  q[0] = r[0];
  q[1] = r[1];
  q[2] = r[2];
  q[3] = r[3];
  q[4] = r[4];
  r[0] = s[0];
  r[1] = s[1];
  r[2] = s[2];
  r[3] = s[3];
  r[4] = s[4];
  s[0] = at[n][m + 2][l][0];
  s[1] = at[n][m + 2][l][1];
  s[2] = at[n][m + 2][l][2];
  s[3] = at[n][m + 2][l][3];
  s[4] = at[n][m + 2][l][4];
  x = v;
  v = w;
  w = an[n][m + 1][l];
  aa = y;
  y = z;
  z = ao[n][m + 1][l];
  ad = ab;
  ab = ac;
  ac = ap[n][m + 1][l];
  ag = ae;
  ae = af;
  af = aq[n][m + 1][l];
  aj = ah;
  ah = ai;
  ai = ar[n][m + 1][l];
  am = ak;
  ak = al;
  al = as[n][m + 1][l];
  p[0] = au[n][m][l][0] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[0] - 2.0 * q[0] + u[0]) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] - u[2]);
  p[1] = au[n][m][l][1] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[1] - 2.0 * q[1] + u[1]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (w - 2.0 * v + x) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[1] * z - u[1] * aa);
  p[2] = au[n][m][l][2] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[2] - 2.0 * q[2] + u[2]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (4.0 / 3.0) * (z - 2.0 * y + aa) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] * z - u[2] * aa + (r[4] - al - u[4] + am) * 0.4);
  p[3] = au[n][m][l][3] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[3] - 2.0 * q[3] + u[3]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (ac - 2.0 * ab + ad) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[3] * z - u[3] * aa);
  p[4] = au[n][m][l][4] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[4] - 2.0 * q[4] + u[4]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 - (1.4 * 1.4)) * (1.0 / (1.0 / (double)(12 - 1)))) * (af - 2.0 * ae + ag) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / 6.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (z * z - 2.0 * y * y + aa * aa) +
         (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.4 * 1.4) * (1.0 / (1.0 / (double)(12 - 1)))) * (r[4] * ai - 2.0 * q[4] * ah + u[4] * aj) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * ((1.4 * r[4] - 0.4 * al) * z - (1.4 * u[4] - 0.4 * am) * aa);
  for (o = 0; o < 5; o++) {
    au[n][m][l][o] = p[o] - (0.25 * ((0.75) > (((0.75) > (1.0) ? (0.75) : (1.0))) ? (0.75) : (((0.75) > (1.0) ? (0.75) : (1.0))))) * (5.0 * q[o] - 4.0 * r[o] + s[o]);
  }

  m = 2;
  t[0] = u[0];
  t[1] = u[1];
  t[2] = u[2];
  t[3] = u[3];
  t[4] = u[4];
  u[0] = q[0];
  u[1] = q[1];
  u[2] = q[2];
  u[3] = q[3];
  u[4] = q[4];
  q[0] = r[0];
  q[1] = r[1];
  q[2] = r[2];
  q[3] = r[3];
  q[4] = r[4];
  r[0] = s[0];
  r[1] = s[1];
  r[2] = s[2];
  r[3] = s[3];
  r[4] = s[4];
  s[0] = at[n][m + 2][l][0];
  s[1] = at[n][m + 2][l][1];
  s[2] = at[n][m + 2][l][2];
  s[3] = at[n][m + 2][l][3];
  s[4] = at[n][m + 2][l][4];
  x = v;
  v = w;
  w = an[n][m + 1][l];
  aa = y;
  y = z;
  z = ao[n][m + 1][l];
  ad = ab;
  ab = ac;
  ac = ap[n][m + 1][l];
  ag = ae;
  ae = af;
  af = aq[n][m + 1][l];
  aj = ah;
  ah = ai;
  ai = ar[n][m + 1][l];
  am = ak;
  ak = al;
  al = as[n][m + 1][l];
  p[0] = au[n][m][l][0] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[0] - 2.0 * q[0] + u[0]) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] - u[2]);
  p[1] = au[n][m][l][1] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[1] - 2.0 * q[1] + u[1]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (w - 2.0 * v + x) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[1] * z - u[1] * aa);
  p[2] = au[n][m][l][2] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[2] - 2.0 * q[2] + u[2]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (4.0 / 3.0) * (z - 2.0 * y + aa) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] * z - u[2] * aa + (r[4] - al - u[4] + am) * 0.4);
  p[3] = au[n][m][l][3] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[3] - 2.0 * q[3] + u[3]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (ac - 2.0 * ab + ad) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[3] * z - u[3] * aa);
  p[4] = au[n][m][l][4] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[4] - 2.0 * q[4] + u[4]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 - (1.4 * 1.4)) * (1.0 / (1.0 / (double)(12 - 1)))) * (af - 2.0 * ae + ag) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / 6.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (z * z - 2.0 * y * y + aa * aa) +
         (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.4 * 1.4) * (1.0 / (1.0 / (double)(12 - 1)))) * (r[4] * ai - 2.0 * q[4] * ah + u[4] * aj) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * ((1.4 * r[4] - 0.4 * al) * z - (1.4 * u[4] - 0.4 * am) * aa);
  for (o = 0; o < 5; o++) {
    au[n][m][l][o] = p[o] - (0.25 * ((0.75) > (((0.75) > (1.0) ? (0.75) : (1.0))) ? (0.75) : (((0.75) > (1.0) ? (0.75) : (1.0))))) * (-4.0 * u[o] + 6.0 * q[o] - 4.0 * r[o] + s[o]);
  }

  for (m = 3; m <= j - 4; m++) {
    t[0] = u[0];
    t[1] = u[1];
    t[2] = u[2];
    t[3] = u[3];
    t[4] = u[4];
    u[0] = q[0];
    u[1] = q[1];
    u[2] = q[2];
    u[3] = q[3];
    u[4] = q[4];
    q[0] = r[0];
    q[1] = r[1];
    q[2] = r[2];
    q[3] = r[3];
    q[4] = r[4];
    r[0] = s[0];
    r[1] = s[1];
    r[2] = s[2];
    r[3] = s[3];
    r[4] = s[4];
    s[0] = at[n][m + 2][l][0];
    s[1] = at[n][m + 2][l][1];
    s[2] = at[n][m + 2][l][2];
    s[3] = at[n][m + 2][l][3];
    s[4] = at[n][m + 2][l][4];
    x = v;
    v = w;
    w = an[n][m + 1][l];
    aa = y;
    y = z;
    z = ao[n][m + 1][l];
    ad = ab;
    ab = ac;
    ac = ap[n][m + 1][l];
    ag = ae;
    ae = af;
    af = aq[n][m + 1][l];
    aj = ah;
    ah = ai;
    ai = ar[n][m + 1][l];
    am = ak;
    ak = al;
    al = as[n][m + 1][l];
    p[0] = au[n][m][l][0] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[0] - 2.0 * q[0] + u[0]) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] - u[2]);
    p[1] = au[n][m][l][1] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[1] - 2.0 * q[1] + u[1]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (w - 2.0 * v + x) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[1] * z - u[1] * aa);
    p[2] = au[n][m][l][2] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[2] - 2.0 * q[2] + u[2]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (4.0 / 3.0) * (z - 2.0 * y + aa) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] * z - u[2] * aa + (r[4] - al - u[4] + am) * 0.4);
    p[3] = au[n][m][l][3] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[3] - 2.0 * q[3] + u[3]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (ac - 2.0 * ab + ad) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[3] * z - u[3] * aa);
    p[4] = au[n][m][l][4] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[4] - 2.0 * q[4] + u[4]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 - (1.4 * 1.4)) * (1.0 / (1.0 / (double)(12 - 1)))) * (af - 2.0 * ae + ag) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / 6.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (z * z - 2.0 * y * y + aa * aa) +
           (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.4 * 1.4) * (1.0 / (1.0 / (double)(12 - 1)))) * (r[4] * ai - 2.0 * q[4] * ah + u[4] * aj) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * ((1.4 * r[4] - 0.4 * al) * z - (1.4 * u[4] - 0.4 * am) * aa);
    for (o = 0; o < 5; o++) {
      au[n][m][l][o] = p[o] - (0.25 * ((0.75) > (((0.75) > (1.0) ? (0.75) : (1.0))) ? (0.75) : (((0.75) > (1.0) ? (0.75) : (1.0))))) * (t[o] - 4.0 * u[o] + 6.0 * q[o] - 4.0 * r[o] + s[o]);
    }
  }

  m = j - 3;
  t[0] = u[0];
  t[1] = u[1];
  t[2] = u[2];
  t[3] = u[3];
  t[4] = u[4];
  u[0] = q[0];
  u[1] = q[1];
  u[2] = q[2];
  u[3] = q[3];
  u[4] = q[4];
  q[0] = r[0];
  q[1] = r[1];
  q[2] = r[2];
  q[3] = r[3];
  q[4] = r[4];
  r[0] = s[0];
  r[1] = s[1];
  r[2] = s[2];
  r[3] = s[3];
  r[4] = s[4];
  s[0] = at[n][m + 2][l][0];
  s[1] = at[n][m + 2][l][1];
  s[2] = at[n][m + 2][l][2];
  s[3] = at[n][m + 2][l][3];
  s[4] = at[n][m + 2][l][4];
  x = v;
  v = w;
  w = an[n][m + 1][l];
  aa = y;
  y = z;
  z = ao[n][m + 1][l];
  ad = ab;
  ab = ac;
  ac = ap[n][m + 1][l];
  ag = ae;
  ae = af;
  af = aq[n][m + 1][l];
  aj = ah;
  ah = ai;
  ai = ar[n][m + 1][l];
  am = ak;
  ak = al;
  al = as[n][m + 1][l];
  p[0] = au[n][m][l][0] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[0] - 2.0 * q[0] + u[0]) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] - u[2]);
  p[1] = au[n][m][l][1] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[1] - 2.0 * q[1] + u[1]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (w - 2.0 * v + x) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[1] * z - u[1] * aa);
  p[2] = au[n][m][l][2] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[2] - 2.0 * q[2] + u[2]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (4.0 / 3.0) * (z - 2.0 * y + aa) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] * z - u[2] * aa + (r[4] - al - u[4] + am) * 0.4);
  p[3] = au[n][m][l][3] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[3] - 2.0 * q[3] + u[3]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (ac - 2.0 * ab + ad) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[3] * z - u[3] * aa);
  p[4] = au[n][m][l][4] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[4] - 2.0 * q[4] + u[4]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 - (1.4 * 1.4)) * (1.0 / (1.0 / (double)(12 - 1)))) * (af - 2.0 * ae + ag) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / 6.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (z * z - 2.0 * y * y + aa * aa) +
         (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.4 * 1.4) * (1.0 / (1.0 / (double)(12 - 1)))) * (r[4] * ai - 2.0 * q[4] * ah + u[4] * aj) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * ((1.4 * r[4] - 0.4 * al) * z - (1.4 * u[4] - 0.4 * am) * aa);
  for (o = 0; o < 5; o++) {
    au[n][m][l][o] = p[o] - (0.25 * ((0.75) > (((0.75) > (1.0) ? (0.75) : (1.0))) ? (0.75) : (((0.75) > (1.0) ? (0.75) : (1.0))))) * (t[o] - 4.0 * u[o] + 6.0 * q[o] - 4.0 * r[o]);
  }

  m = j - 2;
  t[0] = u[0];
  t[1] = u[1];
  t[2] = u[2];
  t[3] = u[3];
  t[4] = u[4];
  u[0] = q[0];
  u[1] = q[1];
  u[2] = q[2];
  u[3] = q[3];
  u[4] = q[4];
  q[0] = r[0];
  q[1] = r[1];
  q[2] = r[2];
  q[3] = r[3];
  q[4] = r[4];
  r[0] = s[0];
  r[1] = s[1];
  r[2] = s[2];
  r[3] = s[3];
  r[4] = s[4];
  x = v;
  v = w;
  w = an[n][m + 1][l];
  aa = y;
  y = z;
  z = ao[n][m + 1][l];
  ad = ab;
  ab = ac;
  ac = ap[n][m + 1][l];
  ag = ae;
  ae = af;
  af = aq[n][m + 1][l];
  aj = ah;
  ah = ai;
  ai = ar[n][m + 1][l];
  am = ak;
  ak = al;
  al = as[n][m + 1][l];
  p[0] = au[n][m][l][0] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[0] - 2.0 * q[0] + u[0]) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] - u[2]);
  p[1] = au[n][m][l][1] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[1] - 2.0 * q[1] + u[1]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (w - 2.0 * v + x) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[1] * z - u[1] * aa);
  p[2] = au[n][m][l][2] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[2] - 2.0 * q[2] + u[2]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (4.0 / 3.0) * (z - 2.0 * y + aa) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[2] * z - u[2] * aa + (r[4] - al - u[4] + am) * 0.4);
  p[3] = au[n][m][l][3] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[3] - 2.0 * q[3] + u[3]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / (1.0 / (double)(12 - 1)))) * (ac - 2.0 * ab + ad) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * (r[3] * z - u[3] * aa);
  p[4] = au[n][m][l][4] + (0.75 * (1.0 / ((1.0 / (double)(12 - 1)) * (1.0 / (double)(12 - 1))))) * (r[4] - 2.0 * q[4] + u[4]) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 - (1.4 * 1.4)) * (1.0 / (1.0 / (double)(12 - 1)))) * (af - 2.0 * ae + ag) + (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.0 / 6.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (z * z - 2.0 * y * y + aa * aa) +
         (((0.1 * 1.0) * (1.0 / (1.0 / (double)(12 - 1)))) * (1.4 * 1.4) * (1.0 / (1.0 / (double)(12 - 1)))) * (r[4] * ai - 2.0 * q[4] * ah + u[4] * aj) - (1.0 / (2.0 * (1.0 / (double)(12 - 1)))) * ((1.4 * r[4] - 0.4 * al) * z - (1.4 * u[4] - 0.4 * am) * aa);
  for (o = 0; o < 5; o++) {
    au[n][m][l][o] = p[o] - (0.25 * ((0.75) > (((0.75) > (1.0) ? (0.75) : (1.0))) ? (0.75) : (((0.75) > (1.0) ? (0.75) : (1.0))))) * (t[o] - 4.0 * u[o] + 5.0 * q[o]);
  }
}
